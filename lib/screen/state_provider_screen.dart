import 'package:flutter/material.dart';
import 'package:riverpod_practice_1/layout/default_layout.dart';

class StateProviderScreen extends StatelessWidget {
  static String get routeName => '/state-provider';

  const StateProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultLayout(
      title: 'StateProviderScreen',
      body: Column(
        children: [],
      ),
    );
  }
}
