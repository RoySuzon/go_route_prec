class ProductModel {
  final int productId;
  final String productName;
  final double price;

  ProductModel({
    required this.productId,
    required this.productName,
    required this.price,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      productId: json['product_id'],
      productName: json['product_name'],
      price: (json['price'] as num).toDouble(), // Ensure price is always double
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'product_id': productId,
      'product_name': productName,
      'price': price,
    };
  }
}
