import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:royal_class/domain/entity/product_entity.dart';
import 'package:royal_class/domain/repository/auth_repository.dart';
import 'package:royal_class/domain/repository/product_repository.dart';

@Injectable()
class Usecase {
  final ProductRepository productRepository;
  final AuthRepository authRepository;

  Usecase({required this.productRepository, required this.authRepository});
  // Get all products from api
  Future<List<ProductEntity>> getAllProduct() async {
    return productRepository.getProducts();
  }
  // Get more details about the selected user from api
  Future<Either<Exception, ProductEntity>> getProductDetail({required int id}) async {
    return await productRepository.getProductDetail(id.toString());
  }
  // Signing in existing user
  Future<Either<Exception, User>> signInUser(
      {required String email, required String password}) async {
    return await authRepository.signInWithEmailAndPassword(email, password);
  }
  // Create new user
  Future<Either<Exception, User>> signUpUser(
      {required String email, required String password}) async {
    return await authRepository.signUpWithEmailAndPassword(email, password);
  }
}
