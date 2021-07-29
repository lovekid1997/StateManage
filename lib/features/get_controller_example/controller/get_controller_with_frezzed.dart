import 'dart:developer';

import 'package:get/get.dart';

import '../../../data_repository/user_repository/user_repository.dart';
import '../../../model/page/pagetination_model.dart';
import '../../../model/user/user_response.dart';
import '../state/get_state_with_freezed.dart';

class GetControllerFreezed extends GetxController
    with StateMixin<GetStateWithFreezed>, ScrollMixin {
  static GetControllerFreezed get to => Get.find();

  final UserRepository _userRepository = UserRepository();

  int limit = 10;
  int page = 1;
  @override
  void onInit() {
    change(const Initial(DataGetFreezed(isLoading: true)));
    fetchData();

    super.onInit();
  }

  Future<void> fetchData() async {
    try {
      final PagtinationModel _pagtinationModel =
          PagtinationModel(limit: limit, page: page);
      final UserResponse? response =
          await _userRepository.fetchUser(pagtinationModel: _pagtinationModel);
      if (response == null) {
        change(const Error(DataGetFreezed(), 'Load data not success'));
      } else {
        final List<DataUser> listUser = response.data ?? [];
        change(Loaded(DataGetFreezed(listUser: listUser, isLoading: false)));
      }
    } catch (e) {
      log(e.toString());
    }
  }

  Future<void> fetchMore() async {
    try {
      change(Loading(state!.data.copyWith(isLoadMore: true)));
      final PagtinationModel _pagtinationModel =
          PagtinationModel(limit: limit, page: ++page);
      final UserResponse? response =
          await _userRepository.fetchUser(pagtinationModel: _pagtinationModel);
      final List<DataUser> dataResponse = response?.data ?? [];

      final List<DataUser>? dataState = state!.data.listUser;

      change(Loaded(state!.data.copyWith(
        listUser: List.of(dataState ?? [])..addAll(dataResponse),
        isLoadMore: false,
      )));
    } catch (e) {
      log(e.toString());
    }
  }

  @override
  Future<void> onEndScroll() async {
    fetchMore();
  }

  @override
  Future<void> onTopScroll() async {
    log('onTopScroll');
  }
}
