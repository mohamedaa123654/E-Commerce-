import '../response/responses.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';

import '../../app/constants.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: Constants.baseUrl)
abstract class AppServiceClient {
  factory AppServiceClient(Dio dio, {String baseUrl}) = _AppServiceClient;

  @POST("/customers/login")
  Future<AuthenticationResponse> login(
      @Field("email") String email, @Field("password") String password);

  @POST("/customers/forgotPassword")
  Future<ForgotPasswordResponse> forgotPassword(@Field("email") String email);

  @POST("/customers/register")
  Future<AuthenticationResponse> register(
      @Field("user_name") String userName,
      @Field("contry_mobile_code") String contryMobileCode,
      @Field("contry_mobile") String contryMobile,
      @Field("email") String email,
      @Field("password") String password,
      @Field("profile_picture") String profilePicture);

  @GET("/home")
  Future<HomeResponse> getHomeData();
}
