import 'package:flutter/material.dart';
import 'package:go_route_prec/core/routes.dart';
import 'package:go_route_prec/features/profile/data/repo/profile_repo_imp.dart';
import 'package:go_route_prec/features/profile/domain/usercases/profile_usecase.dart';
import 'package:go_route_prec/screen/profile_page.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final User user = User(name: "Goutom", email: "goutomroy770@gmail.com");
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: FutureBuilder(
          future: ProfileUsecase(ProfileRepoImp()).callGetProfileDetails(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator.adaptive());
            } else {
              final user = snapshot.data?.data;
              return Center(child: Text(user?.name ?? ""));
            }
          }),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {
      //     context.push(Routes.nastedProfile, extra: user);
      //   },
      // ),
    );
  }
}
