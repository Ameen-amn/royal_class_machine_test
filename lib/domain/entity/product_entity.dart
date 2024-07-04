class ProductEntity {
  final String id;
  final String title;
  final String category;
  final String price;
  final String image;

  ProductEntity(
      {
        required this.id, 
        required this.title,
      required this.category,
      required this.price,
      required this.image});
}
