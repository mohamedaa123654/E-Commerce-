import 'package:dartz/dartz.dart';
import 'package:learn/data/network/failure.dart';
import 'package:learn/data/request/request.dart';

import '../model/model.dart';

//code
abstract class Repository {
  Future<Either<Failure, Authentication>> login(LoginRequest loginRequest);
}
