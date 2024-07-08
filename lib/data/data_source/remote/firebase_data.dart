import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

abstract class AuthRemoteDataSource {
  Future<User> signInWithEmailAndPassword(String email, String password);
  Future<User> signUpWithEmailAndPassword(String email, String password);
}

@Injectable(as: AuthRemoteDataSource)
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth firebaseAuth;

  AuthRemoteDataSourceImpl({required this.firebaseAuth});

  @override
  Future<User> signInWithEmailAndPassword(String email, String password) async {
    UserCredential userCredential =
        await firebaseAuth.signInWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user!;
  }

  @override
  Future<User> signUpWithEmailAndPassword(String email, String password) async {
    UserCredential userCredential = await firebaseAuth
        .createUserWithEmailAndPassword(email: email, password: password);
    return userCredential.user!;
  }
}
