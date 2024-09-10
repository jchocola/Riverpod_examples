import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/provider/elevated_button_widget.dart';
import 'package:river_learn/provider/provider_model.dart';

class ProviderExampleWidget extends ConsumerWidget {
  const ProviderExampleWidget({super.key});

  @override
  Widget build(BuildContext context ,WidgetRef ref) {
      final litleMonk = ref.watch(classTypeProviderModel);

    return  Column(
      children: [
        Text(
          'Riverpod Provider exmple where we wathc a String member variable'
          'that we have passed through a class method.',
        ),
        //Text(ref.watch()),
        Text(litleMonk.fetchName('Pass any name')),

        ElevatedButtonWidget(),
      ],
    );
  }
}
