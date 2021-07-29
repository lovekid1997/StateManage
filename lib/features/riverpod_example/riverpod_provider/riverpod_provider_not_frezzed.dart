import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../data_repository/user_repository/user_repository.dart';
import '../../../model/page/pagetination_model.dart';
import '../../../model/user/user_response.dart';
import '../riverpod_state/riverpod_state_not_freezed.dart';

final riverPodNotifierProvider =
    StateNotifierProvider.autoDispose<RiverPodStateNotifier, RiverPodState>(
        (ref) {
  return RiverPodStateNotifier();
});

class RiverPodStateNotifier extends StateNotifier<RiverPodState> {
  ///1. initial state = RiverPodLoadingState
  RiverPodStateNotifier() : super(RiverPodLoadingState()) {
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
      state = const RiverPodErrorState('Fetch api not success');
    } else {
      final List<DataUser> listUser = userResponse.data ?? [];
      if (listUser.isEmpty) {
        /// data is empty
        state = const RiverPodErrorState('Data is empty');
      } else {
        state = RiverPodLoadedDataState(listUser);
      }
    }
  }

  Future<void> favoriteUser({required DataUser dataUser}) async {
    final List<DataUser> listUser = state.listUsers!;
    final item = listUser.firstWhere((e) => e.id == dataUser.id);
    item.like = !(item.like ?? false);
    state = RiverPodLoadedDataState(state.listUsers!);

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

      final List<DataUser> listUser = state.listUsers!;
      if (dataResponse.isNotEmpty) {
        state = RiverPodLoadedDataState([...listUser, ...dataResponse]);
      }

      isFetchMore = false;
      state = state;
    }
  }
}
