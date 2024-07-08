import 'package:dartz/dartz.dart';
import 'package:royal_class/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts();
  Future<Either<Exception, ProductEntity>> getProductDetail(String id);

}
