import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:state_manage/common/config.dart';
import 'package:state_manage/model/page/pagetination_model.dart';
import 'package:state_manage/model/user/user_response.dart';
import 'package:state_manage/rest_client/rest_client.dart';

@lazySingleton
class DataRepository implements RestClient {
  final dio = Dio();
  late RestClient _client;

  DataRepository() {
    dio.interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
    ));
    _client = RestClient(dio, baseUrl: baseUrl);
  }

  @override
  Future<UserResponse> getAllUser(PagtinationModel pagtinationModel) {
    return _client.getAllUser(pagtinationModel);
  }

  @override
  Future<UserResponse> putUser(DataUser dataUser, String id) {
    return _client.putUser(dataUser, id);
  }
}
