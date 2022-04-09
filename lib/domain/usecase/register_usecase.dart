import '../../data/network/failure.dart';
import '../../data/network/requests.dart';
import '../../domain/model/models.dart';
import '../../domain/usecase/base_usecase.dart';
import 'package:dartz/dartz.dart';

import '../repository/repository.dart';

class RegisterUseCase
    implements BaseUseCase<RegisterUseCaseInput, Authentication> {
  final Repository _repository;

  RegisterUseCase(this._repository);

  @override
  Future<Either<Failure, Authentication>> execute(
      RegisterUseCaseInput input) async {
    return await _repository.register(RegisterRequest(
        input.userName,
        input.contryMobileCode,
        input.contryMobile,
        input.email,
        input.password,
        input.profilePicture));
  }
}

class RegisterUseCaseInput {
  String userName;
  String contryMobileCode;
  String contryMobile;
  String email;
  String password;
  String profilePicture;

  RegisterUseCaseInput(
    this.userName,
    this.contryMobileCode,
    this.contryMobile,
    this.email,
    this.password,
    this.profilePicture,
  );
}
