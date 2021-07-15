import 'package:state_manage/data_repository/data_repository.dart';
import 'package:state_manage/locator/locator.dart';
import 'package:state_manage/model/page/pagetination_model.dart';
import 'package:state_manage/model/user/user_response.dart';

abstract class UserMethod {
  Future<UserResponse?> fetchUser({PagtinationModel? pagtinationModel});
  Future<bool> putUser({required DataUser dataUser, required String id});
}

class UserRepository extends UserMethod {
  final _dataRepository = getIt<DataRepository>();

  @override
  Future<UserResponse?> fetchUser({PagtinationModel? pagtinationModel}) async {
    try {
      final UserResponse userResponse = await _dataRepository
          .getAllUser(pagtinationModel ?? PagtinationModel());
      return userResponse;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<bool> putUser({required DataUser dataUser, required String id}) async {
    try {
      final UserResponse userResponse =
          await _dataRepository.putUser(dataUser, id);
      return userResponse.data?.first.like ?? false;
    } catch (e) {
      return false;
    }
  }
}
