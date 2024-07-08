import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<Either<Exception, User>> signInWithEmailAndPassword(
      String email, String password);
  Future<Either<Exception, User>> signUpWithEmailAndPassword(
      String email, String password);
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

  AuthRemoteDataSourceImpl();

  @override
  Future<Either<Exception, User>> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      print(userCredential.user);
      return right(userCredential.user!);
    } catch (e) {
      return left(Exception());
    }
  }

  @override
  Future<Either<Exception, User>> signUpWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      print(userCredential.user);
      return right(userCredential.user!);
    } catch (e) {
      return left(Exception());
    }
  }
}
