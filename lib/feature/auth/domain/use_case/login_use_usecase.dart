import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:recipe_app/app/usecase/usecase.dart';
import 'package:recipe_app/core/error/failure.dart';
import 'package:recipe_app/feature/auth/domain/repository/auth_repository.dart';

class LoginParams extends Equatable {
  final String username;
  final String password;

  const LoginParams({
    required this.username,
    required this.password,
  });

  // Initial Constructor
  const LoginParams.initial()
      : username = '',
        password = '';

  @override
  List<Object> get props => [username, password];
}

class LoginUseCase implements UsecaseWithParams<String, LoginParams> {
  final IAuthRepository repository;

  LoginUseCase(this.repository);

  @override
  // Future<Either<Failure, String>> call(LoginParams params) {
  //   // IF api then store token in shared preferences

  //   return repository.loginCustomer(params.username, params.password);
  // }
  Future<Either<Failure, String>> call(LoginParams params) async {
    // Hardcoded username and password check
    if (params.username == 'Roshan' && params.password == '123456') {
      return const Right("Your Are Logined !!"); // Return success with token
    } else {
      return Left(Failure(message: 'Failed')); // Return failure if invalid
    }
  }
}
