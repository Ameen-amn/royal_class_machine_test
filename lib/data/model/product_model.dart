import 'package:royal_class/domain/entity/product_entity.dart';

class ProductModel extends ProductEntity {
  ProductModel(
      {required super.title,
      required super.category,
      required super.price,
      required super.image,
      required super.id});

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
        id: json['id'],
        title: json['title'],
        category: json['category']['name'],
        price: json['price'],
        image: json['images']);
  }
}
