import 'package:hive/hive.dart';

part 'hive_model.g.dart';

@HiveType(typeId: 0)
class ItemModel extends HiveObject {
  @HiveField(0)
  final int id;

  @HiveField(1)
  final String title;

  @HiveField(2)
  final String description;
  @HiveField(3)
  final List<String> image;
  @HiveField(4)
  final String category;
  @HiveField(5)
  final int price;

  ItemModel(
      {required this.image,
      required this.category,
      required this.price,
      required this.id,
      required this.title,
      required this.description});


  factory ItemModel.fromJson(Map<String, dynamic> json) {
    return ItemModel(
      id: json['id'],
      title: json['title'],
        description: json['description'],
        category: json['category']['name'],
        price: json['price'],
        image: json['images']
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'category':category,
      'price':price,
      'image':image
    };
  }
}

