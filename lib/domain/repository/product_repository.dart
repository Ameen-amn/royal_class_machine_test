import 'package:royal_class/domain/entity/product_entity.dart';

abstract class ProductRepository {
  Future<List<ProductEntity>> getProducts(int page);
  Future<ProductEntity> getProductDetail(String id);
  
}
