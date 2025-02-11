// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/products/data/models/product_model.dart';
import 'package:go_route_prec/features/products/domain/repo/product_repo.dart';

class ProductUsecase {
  final ProductRepo repo;
  ProductUsecase(this.repo);

  Future<ApiResponse<List<ProductModel>>> callGetProduct() async {
    // await Future.delayed(Duration(seconds: 2));
    // return ApiResponse(statusCode: 100, message: "adad", data: [
    //   ProductModel(productId: 111, productName: 'productName', price: 111)
    // ]);

    return await repo.getProducts();
  }
}
