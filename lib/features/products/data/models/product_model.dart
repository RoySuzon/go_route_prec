class ProductModel {
  final int productId;
  final String productName;
  final String productCode;
  final double price;

  ProductModel( {
    required this.productId,
    required this.productName,
    required this.price,
    required this.productCode,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      productId: json['product_id']??"",
      productCode: json['product_code']??"",
      productName: json['product_name']??"",
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
