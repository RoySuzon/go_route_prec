// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_route_prec/features/profile/data/repo/profile_repo_imp.dart';
import 'package:go_route_prec/features/profile/domain/usercases/profile_usecase.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: FutureBuilder(
          future: ProfileUsecase(ProfileRepoImp()).callGetProfileDetails(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(child: CircularProgressIndicator.adaptive());
            } else {
              final user = snapshot.data?.data;
              return Column(
                children: [Text(user?.email ?? "")],
              );
            }
          }),
    );
  }
}

class User {
  final String name;
  final String email;
  User({
    required this.name,
    required this.email,
  });
}
