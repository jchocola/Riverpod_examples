import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/state_provider/controller.dart';
import 'package:river_learn/state_provider/provider_model.dart';

class CounterWidget extends ConsumerWidget {
  const CounterWidget({
    super.key,
    required this.StaetProviderInt
  });
  final int StaetProviderInt;
  @override
  Widget build(BuildContext context , WidgetRef ref) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(StaetProviderInt.toString()),
        FloatingActionButton(
          onPressed: () {
            increment(ref);
          },
          child: const Icon(Icons.add),
        ),
        const Text('Clicking the button \n will increase the number by 1'),
      ],
    );
  }
}
