// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key, required this.user});
  final User user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(user.name),
      ),
      body: Column(
        children: [
          CircleAvatar(
            radius: 40,
            backgroundColor: Colors.red,
          )
        ],
      ),
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
