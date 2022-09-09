import 'package:flutter_riverpod/flutter_riverpod.dart';

final autoDisposeModifierProvider =
    FutureProvider.autoDispose<List<int>>((ref) async {
  await Future.delayed(const Duration(seconds: 1));

  return [1, 2, 3, 4, 5];
});
