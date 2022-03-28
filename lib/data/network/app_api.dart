import 'package:learn/app/constant.dart';
import 'package:dio/dio.dart';
import 'package:learn/data/responses/responses.dart';
import 'package:retrofit/http.dart';
part 'app_api.g.dart';

//API link

@RestApi(baseUrl: Constant.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
    @Field("email") String email,
    @Field("password") String password,
  );
}
