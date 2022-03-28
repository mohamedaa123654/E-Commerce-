import 'package:learn/data/data_source/remote_data_source.dart';
import 'package:learn/data/mapper/mapper.dart';
import 'package:learn/data/network/network_info.dart';
import 'package:learn/domain/model.dart';
import 'package:learn/data/request/request.dart';
import 'package:learn/data/network/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:learn/domain/repository.dart';

class RepositoryImpl implements Repository {
  final RemoteDataSource _remoteDataSource;
  final NetworkInfo _networkInfo;
  RepositoryImpl(this._remoteDataSource, this._networkInfo);
  @override
  Future<Either<Failure, Authentication>> login(
      LoginRequest loginRequest) async {
    // TODO: implement login
    if (await _networkInfo.isConnected) {
      final response = await _remoteDataSource.login(loginRequest);
      if (response.status == 0) {
        return Right(response.toDomain());
      } else {
        return Left(Failure(409, response.message ?? "business error message"));
      }
    } else {
      return Left(Failure(501, "Please Check Your internet Connetion"));
    }
  }
}
