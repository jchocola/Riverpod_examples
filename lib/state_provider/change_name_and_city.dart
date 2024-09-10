import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/state_provider/controller.dart';

class ChangeNameAndCity extends ConsumerWidget {
  const ChangeNameAndCity({super.key, required this.nameProviderObject , required this.cityProviderObject});
  final String nameProviderObject;
  final String cityProviderObject;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        // NAME PART
        Row(
          children: [
            Text('Name : $nameProviderObject'),
            TextButton(
                onPressed: () {
                  changeName(ref);
                },
                child: Text('Change Name')),
            TextButton(
                onPressed: () {
                  clearName(ref);
                },
                child: Text('Clear Name'))
          ],
        ),

        // CITY PART
        Row(
          children: [
            Text('City : $cityProviderObject'),
            TextButton(
                onPressed: () {
                  changeCity(ref);
                },
                child: Text('Change City')),
            TextButton(
                onPressed: () {
                  clearCity(ref);
                },
                child: Text('Clear City'))
          ],
        ),
      ],
    );
  }
}
