import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends StateNotifier<List<String>> {
  // contructor
  NameNotifier() : super([]);

  // add name function
  void addNames(String name) {
    state = [...state, name];
  }

  void deleteName(int index) {
    state.removeAt(index);
    
  }
}

final nameNotifierProvider = StateNotifierProvider<NameNotifier, List<String>>((ref) {
  return NameNotifier();
});
