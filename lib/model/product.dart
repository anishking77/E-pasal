class Product {
  final String id;
  final String title;
  final double price;
  final String description;
  final String imageUrl;
  bool isFavourite;

  Product(
      {this.id,
      this.title,
      this.price,
      this.description,
      this.imageUrl,
      this.isFavourite});
}
