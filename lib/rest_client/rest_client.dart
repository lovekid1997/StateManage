import 'package:retrofit/retrofit.dart';
import 'package:dio/dio.dart';
import 'package:state_manage/common/config.dart';
import 'package:state_manage/model/page/pagetination_model.dart';
import 'package:state_manage/model/user/user_response.dart';

part 'rest_client.g.dart';

class Apis {
  static const user = 'api/v1/user/get-user';
}

@RestApi(baseUrl: baseUrl)
abstract class RestClient {
  factory RestClient(Dio dio, {String baseUrl}) = _RestClient;

  @GET(Apis.user)
  Future<UserResponse> getAllUser(@Queries() PagtinationModel pagtinationModel);
  
  @PUT('${Apis.user}/{id}')
  Future<UserResponse> putUser(
      @Body() DataUser dataUser, @Path('id') String id);
}
