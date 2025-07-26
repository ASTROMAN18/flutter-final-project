class Product {
  final int id;
  final String title;
  final String description;
  final double price;
  final String category;
  final List<dynamic> images;
    int quantity = 1;
  Product({
    required this.id,
    required this.title,
    required this.description,
    required this.price,
    required this.category,
    required this.images,
  });
  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      price: json['price'].toDouble(),
      category: json['category'],
      images: json['images'],
    );
  }
  get allProducts => null;
}
