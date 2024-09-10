import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/state_provider/controller.dart';

class Raiseandreduceageoflittlemonk extends ConsumerWidget {
  const Raiseandreduceageoflittlemonk({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Row(
      children: [
        ElevatedButton(
            onPressed: () {
              changeListMonk(ref);
            },
            child: const Text('Grow Litle Monk')),
        ElevatedButton(
            onPressed: () {
              reverseAgeOfLittleMonk(ref);
            },
            child: const Text('Revesre Age of Little Monk')),
      ],
    );
  }
}
