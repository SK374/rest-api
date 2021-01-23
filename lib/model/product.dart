class Product {
  final String name;
  final String description;
  final String imageLink;
  final String price;
  final String brand;

  Product(
      {this.name, this.imageLink, this.description, this.price, this.brand});

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
        name: json['name'],
        imageLink: json['image_link'],
        description: json['description'],
        price: json['price'],
        brand: json['brand']);
  }
}
