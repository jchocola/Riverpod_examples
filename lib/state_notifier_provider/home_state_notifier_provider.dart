import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/state_notifier_provider/model.dart';

class HomeStateNotifierProvider extends ConsumerStatefulWidget {
  const HomeStateNotifierProvider({super.key});

  @override
  ConsumerState<HomeStateNotifierProvider> createState() => _HomeStateNotifierProviderState();
}

class _HomeStateNotifierProviderState extends ConsumerState<HomeStateNotifierProvider> {
  @override
  Widget build(BuildContext context ) {
    final myListNameStateProvider = ref.watch(nameNotifierProvider);
    return ListView.builder(
        itemCount: myListNameStateProvider.length,
        itemBuilder: (context, index) {
          return GestureDetector(
              onDoubleTap: () {
                print('tapped');
               
                setState(() {
                   ref.read(nameNotifierProvider.notifier).deleteName(index);
                });
              },
              child: Text(myListNameStateProvider[index]));
        });
  }
}
