import 'dart:async';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:state_manage/data_repository/user_repository/user_repository.dart';
import 'package:state_manage/features/riverpod_example/riverpod_state/riverpod_freezed.dart';
import 'package:state_manage/model/page/pagetination_model.dart';
import 'package:state_manage/model/user/user_response.dart';

final riverPodNotifierProviderFrezzed = StateNotifierProvider.autoDispose<
    RiverPodStateNotifierFrezzed, RiverPodStateFrezzed>((ref) {
  return RiverPodStateNotifierFrezzed();
});

class RiverPodStateNotifierFrezzed extends StateNotifier<RiverPodStateFrezzed> {
  ///1. initial state = RiverPodLoadingState
  RiverPodStateNotifierFrezzed() : super(const RiverPodStateFrezzed.loading()) {
    /// initial fetch data.
    _fetchData();
  }

  final UserRepository _userRepository = UserRepository();

  //initial pagtination
  int limit = 20;
  int page = 1;
  bool isFetchMore = false;

  Future<void> _fetchData() async {
    /// pagetination
    final PagtinationModel pagtinationModel = PagtinationModel(
      limit: limit,
      page: page,
    );

    /// response data
    final UserResponse? userResponse =
        await _userRepository.fetchUser(pagtinationModel: pagtinationModel);

    /// check response
    if (userResponse == null) {
      /// data is null show error
      state = const RiverPodStateFrezzed.error('Fetch api not success');
    } else {
      final List<DataUser> listUser = userResponse.data ?? [];
      if (listUser.isEmpty) {
        /// data is empty
        state = const Error('Data is empty');
      } else {
        state = RiverPodStateFrezzed.loaded(listUser);
      }
    }
  }

  Future<void> favoriteUser({required DataUser dataUser}) async {
    final List<DataUser> listUser = state.map(
        loaded: (value) => value.listUsers!,
        loading: (e) => [],
        error: (e) => []);
    final DataUser item = listUser.firstWhere((e) => e.id == dataUser.id);
    item.like = !(item.like ?? false);
    state = Loaded(listUser);

    // final bool isSuccess =
        await _userRepository.putUser(dataUser: item, id: dataUser.id!);

    /// handle more, show dialog,.....
    ///
  }

  Future<void> fetchMore() async {
    if (!isFetchMore) {
      isFetchMore = true;
      state = state;

      /// pagetination
      final PagtinationModel pagtinationModel = PagtinationModel(
        limit: limit,
        page: ++page,
      );

      /// response data
      final UserResponse? userResponse =
          await _userRepository.fetchUser(pagtinationModel: pagtinationModel);
      final List<DataUser> dataResponse = userResponse?.data ?? [];

      final List<DataUser> listUser = state.map(
          loaded: (value) => value.listUsers!,
          loading: (e) => [],
          error: (e) => []);
      if (dataResponse.isNotEmpty) {
        state = Loaded([...listUser, ...dataResponse]);
      }

      isFetchMore = false;
      state = state;
    }
  }
}
