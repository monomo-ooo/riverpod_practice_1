import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:riverpod_practice_1/screen/home_screen.dart';

class ErrorScreen extends StatelessWidget {
  final String error;

  const ErrorScreen({
    Key? key,
    required this.error,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(error),
        SizedBox(height: 16),
        ElevatedButton(
          onPressed: () => context.goNamed(HomeScreen.routeName),
          child: Text('To Home'),
        ),
      ],
    );
  }
}
