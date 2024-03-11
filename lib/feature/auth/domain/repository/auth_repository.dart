import 'package:fpdart/fpdart.dart';
import 'package:bloggy/core/error/failures.dart';

/// Abstract Interface are used to define set of methods a class must implement for Auth operation
abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  Future<Either<Failure, String>> logInWithEmailPassword({
    required String email,
    required String password,
  });
}
