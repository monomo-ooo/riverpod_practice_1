import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_practice_1/layout/default_layout.dart';
import 'package:riverpod_practice_1/screen/state_provider_screen.dart';

class HomeScreen extends StatelessWidget {
  static String get routeName => '/';

  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'HomeScreen',
      body: ListView(
        children: [
          ElevatedButton(
            onPressed: () => context.goNamed(StateProviderScreen.routeName),
            child: Text('StateProviderScreen'),
          ),
        ],
      ),
    );
  }
}
