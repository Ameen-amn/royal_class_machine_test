class ProductEntity {
  final int id;
  final String title;
  final String category;
  final int price;
  final List<dynamic> image;

  ProductEntity(
      {required this.id,
      required this.title,
      required this.category,
      required this.price,
      required this.image});
}
