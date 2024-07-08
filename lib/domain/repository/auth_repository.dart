import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRepository {
  Future<Either<Exception, User>> signInWithEmailAndPassword(String email, String password);
  Future<Either<Exception, User>> signUpWithEmailAndPassword(String email, String password);
}
