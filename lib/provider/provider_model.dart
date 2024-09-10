import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ProviderModel extends ChangeNotifier {
  String _littleMonk = 'I am any String data ';
  String get litleMonk => _littleMonk;

  String fetchName(String str) {
    _littleMonk = str;
    return _littleMonk;
  }

  void changeName() {
    _littleMonk = 'now I am Little Monk';
    notifyListeners();
  }
}

final classTypeProviderModel = ChangeNotifierProvider<ProviderModel>((ref) {
  return ProviderModel();
});

