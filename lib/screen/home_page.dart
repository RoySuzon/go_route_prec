import 'package:flutter/material.dart';
import 'package:go_route_prec/common/api_reponse_model.dart';
import 'package:go_route_prec/features/products/data/models/product_model.dart';
import 'package:go_route_prec/features/products/data/repo/product_repo_imp.dart';
import 'package:go_route_prec/features/products/data/repo/product_repo_mock.dart';
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
            return ListView.separated(
              itemBuilder: (context, index) {
                ProductModel product = snapshot.data!.data![index];

                return Card(
                  child: Padding(
                    padding: const EdgeInsets.all(16),
                    child: Column(
                      spacing: 5,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                                color: Colors.blueGrey.withOpacity(.2),
                                borderRadius: BorderRadius.circular(12)),
                            padding: EdgeInsets.symmetric(
                                horizontal: 12, vertical: 8),
                            child: Text(product.productCode,
                                style: Theme.of(context).textTheme.bodySmall!.copyWith(color: Colors.black))),
                        Text(
                          product.productName,
                          style: Theme.of(context).textTheme.titleSmall,
                        ),
                      ],
                    ),
                  ),
                );
              },
              itemCount: snapshot.data?.data!.length ?? 0,
              separatorBuilder: (BuildContext context, int index) {
                return SizedBox(height: 10);
              },
            );
          }
        },
      ),
    );
  }
}
