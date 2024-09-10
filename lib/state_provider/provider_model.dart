import 'package:riverpod/riverpod.dart';

// state provider - interger
final stateProviderInteger = StateProvider<int>((ref) {
  return 100;
});

/*
    In riverpod we can have two providers expose a state of the same 'type'.
    
    Package : Provider can't do that
 */

final stateProviderName = StateProvider<String>((ref) {
  return 'John';
});

final stateProviderCity = StateProvider<String>((ref) {
  return 'Chicago';
});







final stateProviderClass = StateProvider<StateProviderModel>((ref) {
  return StateProviderModel('I am a little Monk', 6);
});

class StateProviderModel {
  StateProviderModel(this._littleMonk, this._ageOfLittleMonk);
  String _littleMonk = '';
  int _ageOfLittleMonk = 0;
  String get littleMonk => _littleMonk;
  int get ageOfLittleMonk => _ageOfLittleMonk;
}
