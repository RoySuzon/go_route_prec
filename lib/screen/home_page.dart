import 'package:flutter/material.dart';
import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/products/data/models/product_model.dart';
import 'package:go_route_prec/features/products/data/repo/product_repo_imp.dart';
import 'package:go_route_prec/features/products/domain/usecases/product_usecase.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("This is Home Page"),
      ),
      body: FutureBuilder<ApiResponse<List<ProductModel>>>(
        future: ProductUsecase(ProductRepoImp()).callGetProduct(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator.adaptive());
          } else {
            return ListView.builder(
              itemBuilder: (context, index) {
                ProductModel product = snapshot.data!.data![index];

                return Text(product.productName);
              },
              itemCount: snapshot.data?.data!.length ?? 0,
            );
          }
        },
      ),
    );
  }
}
