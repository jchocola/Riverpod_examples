import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:river_learn/state_provider/provider_model.dart';

void increment(WidgetRef ref) {
  ref.read(stateProviderInteger.notifier).state++;
}

void changeName(WidgetRef ref) {
  ref.read(stateProviderName.notifier).state = 'Bak NGuen';
}

void changeCity(WidgetRef ref) {
  ref.read(stateProviderCity.notifier).state = 'Tuyen Quang';
}

void clearName(WidgetRef ref) {
  ref.read(stateProviderName.notifier).state = 'Old name';
}

void clearCity(WidgetRef ref) {
  ref.read(stateProviderCity.notifier).state = 'Defualt';
}

void changeListMonk(WidgetRef ref) {
  ref.read(stateProviderClass.notifier).state =
      StateProviderModel('Now i am a big monk with white beard', 70);
}

void reverseAgeOfLittleMonk(WidgetRef ref) {
  ref.read(stateProviderClass.notifier).state =
      StateProviderModel('Now i am a little monk again', 6);
}
