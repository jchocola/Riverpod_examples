import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NameNotifier extends ChangeNotifier {
  final List<String> ListOfNames = [];

  void addName(String names) {
    ListOfNames.add(names);
    notifyListeners();
  }

  void deleteName(int index) {
    ListOfNames.remove(ListOfNames[index]);
    notifyListeners();
  }
}

final nameChangeNotifier = ChangeNotifierProvider<NameNotifier>((ref) {
  return NameNotifier();
});
