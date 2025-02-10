import 'package:flutter/material.dart';
import 'package:go_route_prec/core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: routes,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';

// void main() {
//   runApp(MyApp());
// }

// class MyApp extends StatelessWidget {
//   MyApp({super.key});

//   final _router = GoRouter(
//     initialLocation: '/home',
//     routes: [
//       StatefulShellRoute.indexedStack(
//         builder: (context, state, navigationShell) {
//           return Scaffold(
//             appBar: AppBar(title: Text('data'),),
//             body: navigationShell,
//             bottomNavigationBar: BottomNavigationBar(
//               currentIndex: navigationShell.currentIndex,
//               onTap: navigationShell.goBranch,
//               items: const [
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.home),
//                   label: 'Home',
//                 ),
//                 BottomNavigationBarItem(
//                   icon: Icon(Icons.settings),
//                   label: 'Settings',
//                 ),
//               ],
//             ),
//           );
//         },
//         branches: [
//           StatefulShellBranch(
//             routes: [
//               GoRoute(
//                   path: '/home',
//                   builder: (context, state) => const HomePage(),
//                   routes: [
//                     GoRoute(
//                         path: 'settings',
//                         builder: (context, state) => SettingsPage()),
//                   ]),
//             ],
//           ),
//           StatefulShellBranch(
//             routes: [
//               GoRoute(
//                   path: '/settings',
//                   builder: (context, state) => const SettingsPage(),
//                   routes: [
//                     GoRoute(
//                         path: 'details',
//                         builder: (context, state) => HomePage()),
//                   ]),
//             ],
//           ),
//         ],
//       ),
//     ],
//   );

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp.router(
//       routerConfig: _router,
//     );
//   }
// }

// class HomePage extends StatelessWidget {
//   const HomePage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           // Navigate within Home stack
//           context.push('/home/settings');
//         },
//         child: const Text('Go to Home Details'),
//       ),
//     );
//   }
// }

// class SettingsPage extends StatelessWidget {
//   const SettingsPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: ElevatedButton(
//         onPressed: () {
//           // Navigate within Settings stack
//           context.push('/settings/details');
//         },
//         child: const Text('Go to Settings Details'),
//       ),
//     );
//   }
// }
