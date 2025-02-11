import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/products/data/models/product_model.dart';
import 'package:go_route_prec/features/products/domain/repo/product_repo.dart';

class ProductRepoMock implements ProductRepo {
  @override
  Future<ApiResponse<List<ProductModel>>> getProducts() async {
    await Future.delayed(Duration(milliseconds: 200));
    return ApiResponse.fromJson(
        productsMockDataa,
        (data) =>
            (data as List).map((item) => ProductModel.fromJson(item)).toList());

    // log(res.body);
  }
}

final productsMockDataa = {
  "statusCode": 200,
  "message": "Success",
  "data": [
    {"product_id": 11, "product_name": "Traditional Sope", "price": 0},
    {"product_id": 12, "product_name": "Chicken Sope", "price": 22.22},
    {"product_id": 101, "product_name": "Fresh Avocado", "price": 6},
    {"product_id": 102, "product_name": "Corn Tortillas", "price": 2},
    {"product_id": 103, "product_name": "Mexican Rice", "price": 7.33},
    {"product_id": 104, "product_name": "Black Beans", "price": 6.44},
    {"product_id": 105, "product_name": "Pico de Gallo", "price": 7},
    {"product_id": 106, "product_name": "Guacamole", "price": 6.44},
    {"product_id": 107, "product_name": "Salsa Verde", "price": 3.33},
    {"product_id": 108, "product_name": "Queso Fresco", "price": 8},
    {"product_id": 109, "product_name": "Jalapeños", "price": 3}
  ],
  "error": null
};
