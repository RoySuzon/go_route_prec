import 'package:flutter/material.dart';
import 'package:go_route_prec/core/routes.dart';
import 'package:go_route_prec/screen/profile_page.dart';
import 'package:go_router/go_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final User user = User(name: "Goutom", email: "goutomroy770@gmail.com");
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.push(Routes.nastedProfile, extra: user);
        },
      ),
    );
  }
}
