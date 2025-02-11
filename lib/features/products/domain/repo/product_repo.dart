import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/products/data/models/product_model.dart';

abstract class ProductRepo {
  Future<ApiResponse<List<ProductModel>>> getProducts();
}
