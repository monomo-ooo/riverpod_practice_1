import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_practice_1/layout/default_layout.dart';
import 'package:riverpod_practice_1/screen/family_modifier_screen.dart';
import 'package:riverpod_practice_1/screen/future_provider_screen.dart';
import 'package:riverpod_practice_1/screen/state_notifier_provider_screen.dart';
import 'package:riverpod_practice_1/screen/state_provider_screen.dart';
import 'package:riverpod_practice_1/screen/stream_provider_screen.dart';

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
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () =>
                context.goNamed(StateNotifierProviderScreen.routeName),
            child: Text('StateNotifierProviderScreen'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.goNamed(FutureProviderScreen.routeName),
            child: Text('FutureProviderScreen'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.goNamed(StreamProviderScreen.routeName),
            child: Text('StreamProviderScreen'),
          ),
          SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => context.goNamed(FamilyModifierScreen.routeName),
            child: Text('FamilyModifierScreen'),
          ),
        ],
      ),
    );
  }
}
