import 'package:bloggy/core/error/failures.dart';
import 'package:bloggy/core/usecase/usecase.dart';
import 'package:bloggy/feature/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class UserSignUpParam {
  final String name;
  final String email;
  final String password;

  const UserSignUpParam(
      {required this.name, required this.email, required this.password});
}

class UserSignin implements UseCase<String, UserSignUpParam> {
  // Data Members
  final AuthRepository authRepository;
  // Member Functions
  const UserSignin(this.authRepository);

  // Methods
  @override
  Future<Either<Failure, String>> call(UserSignUpParam params) async {
    return await authRepository.signUpWithEmailPassword(
        name: params.name, email: params.email, password: params.password);
  }
}
