import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/provider/provider_model.dart';
import 'package:river_learn/state_provider/change_name_and_city.dart';
import 'package:river_learn/state_provider/counter_widget.dart';
import 'package:river_learn/state_provider/provider_model.dart';
import 'package:river_learn/state_provider/raiseAndReduceAgeOfLittleMonk.dart';

class StateProviderExample extends ConsumerWidget {
  const StateProviderExample({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateProvidrIntegerObject = ref.watch(stateProviderInteger);
    final nameProviderObject = ref.watch(stateProviderName);
    final cityProviderObject = ref.watch(stateProviderCity);
    final monkProviderObject = ref.watch(stateProviderClass);

    return Column(
      children: [
        CounterWidget(
          StaetProviderInt: stateProvidrIntegerObject,
        ),
        const SizedBox(
          height: 20,
        ),
        ChangeNameAndCity(
          nameProviderObject: nameProviderObject,
          cityProviderObject: cityProviderObject,
        ),
        const SizedBox(
          height: 50,
        ),
        Text('${monkProviderObject.littleMonk} ${monkProviderObject.ageOfLittleMonk}'),
        const Raiseandreduceageoflittlemonk(),
      ],
    );
  }
}
