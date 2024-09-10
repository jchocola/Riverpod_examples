import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/change_notifier_provider/home_of_change_notifier_provider.dart';
import 'package:river_learn/change_notifier_provider/name_notifier.dart';
import 'package:river_learn/provider/provider_example_widget.dart';
import 'package:river_learn/state_notifier_provider/home_state_notifier_provider.dart';
import 'package:river_learn/state_notifier_provider/model.dart';
import 'package:river_learn/state_provider/state_provider_example.dart';

void main() {
  runApp(ProviderScope(child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      home: Home(),
    );
  }
}

class Home extends ConsumerWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Riverpod Example'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(nameNotifierProvider.notifier).addNames('new name');
          },
          child: Icon(Icons.add),
        ),
        body: HomeStateNotifierProvider());
  }
}
