import '../../locator/locator.dart';
import '../../model/page/pagetination_model.dart';
import '../../model/user/user_response.dart';
import '../data_repository.dart';

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
