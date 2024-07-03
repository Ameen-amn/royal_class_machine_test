import 'package:royal_class/domain/entity/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel(
      {required super.title,
      required super.category,
      required super.price,
      required super.image});
}
