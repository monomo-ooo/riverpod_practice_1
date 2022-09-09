import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_practice_1/layout/default_layout.dart';
import 'package:riverpod_practice_1/model/shopping_item_model.dart';
import 'package:riverpod_practice_1/provider/state_notifier_provider.dart';

class StateNotifierProviderScreen extends ConsumerWidget {
  static String get routeName => 'state-notifier-provider';

  const StateNotifierProviderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final List<ShoppingItemModel> state = ref.watch(shoppingListProvider);

    return DefaultLayout(
      title: 'StateNotifierProvider',
      body: ListView(
        children: state
            .map(
              (e) => CheckboxListTile(
                title: Text(e.name),
                value: e.hasBought,
                onChanged: (bool? value) {
                  ref
                      .read(shoppingListProvider.notifier)
                      .toggleHasBought(name: e.name);
                },
              ),
            )
            .toList(),
      ),
    );
  }
}
