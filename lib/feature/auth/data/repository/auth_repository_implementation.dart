import 'package:bloggy/core/error/exception.dart';
import 'package:bloggy/core/error/failures.dart';
import 'package:bloggy/feature/auth/data/datasources/auth_remote_data_source.dart';
import 'package:bloggy/feature/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepositoryImplementation implements AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  const AuthRepositoryImplementation(this.authRemoteDataSource);

  @override
  Future<Either<Failure, String>> logInWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final userId = await authRemoteDataSource.signUpWithEmailPassword(
          name: name, email: email, password: password);

      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(message: e.message));
    }
  }
}
