import 'dart:convert';
import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/core/api_endpoint.dart';
import 'package:go_route_prec/features/products/data/models/product_model.dart';
import 'package:go_route_prec/features/products/domain/repo/product_repo.dart';
import 'package:http/http.dart';

class ProductRepoImp implements ProductRepo {
  @override
  Future<ApiResponse<List<ProductModel>>> getProducts() async {
    final res = await get(Uri.parse(ApiEndpoint.products));

    return ApiResponse.fromJson(
        jsonDecode(res.body),
        (data) =>
            (data as List).map((item) => ProductModel.fromJson(item)).toList());

    // log(res.body);
  }
}
