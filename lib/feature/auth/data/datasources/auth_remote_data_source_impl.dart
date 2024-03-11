import 'package:bloggy/core/error/exception.dart';
import 'package:bloggy/feature/auth/data/datasources/auth_remote_data_source.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

/// AuthRemoteDataSourceImpl
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataSourceImpl(this.supabaseClient);

  @override
  Future<String> loginWithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final response = await supabaseClient.auth.signUp(
        email: email,
        password: password,
        data: {'name': name},
      );
      if (response.user == null) {
        throw const ServerException("User is null");
      }
      return response.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
