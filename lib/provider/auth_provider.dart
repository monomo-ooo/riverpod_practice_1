import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_practice_1/screen/error_screen.dart';
import 'package:riverpod_practice_1/screen/home_screen.dart';
import 'package:riverpod_practice_1/screen/state_provider_screen.dart';

final routerProvider = Provider<GoRouter>(
  (ref) {
    return GoRouter(
      initialLocation: '/',
      errorBuilder: (context, state) =>
          ErrorScreen(error: state.error.toString()),
      // redirect: // TODO: Implement,
      // refreshListenable: // TODO: Implement,
      routes: [
        GoRoute(
          path: '/',
          name: HomeScreen.routeName,
          builder: (context, state) => HomeScreen(),
        ),
        GoRoute(
          path: '/state-provider',
          name: StateProviderScreen.routeName,
          builder: (context, state) => StateProviderScreen(),
        ),
      ],
    );
  },
);

class AuthNotifier extends ChangeNotifier {
  /* TODO: Implement
   *  - notifyListeners() in constructor
   *  - redirect logic
   *  - move routes here
   */
}

// TODO: Implement
// final userProvider = StateNotifierProvider<UserStateNotifier, UserModel?> {
// (ref) => UserStateNotifier(),
// };

// class UserStateNotifier extends StateNotifier //<UserModel?>
// {
//   // TODO: Implement
//   // login()
//   // logout()
// }
