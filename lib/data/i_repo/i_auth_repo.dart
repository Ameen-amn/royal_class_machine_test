import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:royal_class/data/data_source/remote/firebase_data.dart';
import 'package:royal_class/domain/repository/auth_repository.dart';

@Injectable(as: AuthRepository)
class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;

  AuthRepositoryImpl({required this.remoteDataSource});
  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async{
   return await remoteDataSource.signInWithEmailAndPassword(email, password);
  }

  @override
  Future<User> signUpWithEmailAndPassword(String email, String password) async{
    return await remoteDataSource.signUpWithEmailAndPassword(email, password);
  }
}
