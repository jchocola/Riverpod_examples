import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:river_learn/change_notifier_provider/name_notifier.dart';

class HomeOfChangeNotifierProvider extends ConsumerWidget {
  const HomeOfChangeNotifierProvider({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final nameChangeNotifierProvider = ref.watch(nameChangeNotifier);
    return Center(
      child: ListView.builder(
          itemCount: nameChangeNotifierProvider.ListOfNames.length,
          itemBuilder: (context, index) {
            return ItemWidget(
              title: nameChangeNotifierProvider.ListOfNames[index].toString(),
              index: index,
            );
          }),
    );
  }
}

class ItemWidget extends ConsumerWidget {
  const ItemWidget({super.key, required this.title, required this.index});
  final String title;
  final int index;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GestureDetector(
      onTap: () {
        ref.watch(nameChangeNotifier).deleteName(index);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 5),
        color: Colors.blueGrey,
        padding: EdgeInsets.all(10),
        child: Text(title),
      ),
    );
  }
}
