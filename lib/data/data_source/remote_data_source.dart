import 'package:learn/data/network/app_api.dart';
import 'package:learn/data/request/request.dart';
import 'package:learn/data/responses/responses.dart';

abstract class RemoteDataSource {
  Future<AuthenticationResponse> login(LoginRequest loginRequest);
}

class RemoteDataSourceImpl implements RemoteDataSource {
  AppServiceClient _appServiceClient;
  RemoteDataSourceImpl(this._appServiceClient);

  @override
  Future<AuthenticationResponse> login(LoginRequest loginRequest) {
    // TODO: implement login
    return _appServiceClient.login(loginRequest.email, loginRequest.password);
  }
}
