import 'package:freezed_annotation/freezed_annotation.dart';

class ProductEntity {
  final int id;
  final String title;
  final String category;
  final int price;
  final String description;
  final List<dynamic> image;

  ProductEntity(
      {required this.id,
    required  this.description, 
      required this.title,
      required this.category,
      required this.price,
      required this.image});
}
