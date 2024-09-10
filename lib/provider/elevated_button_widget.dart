import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:river_learn/provider/provider_model.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<ProviderModel>(
      create: (context) => ProviderModel(),
      child: Column(
        children: [
          Consumer<ProviderModel>(builder: (context, myModel, child) {
            return FloatingActionButton(
              onPressed: () {
                myModel.changeName();
              },
              child: Icon(Icons.add),
            );
          }),
          SizedBox(
            height: 30,
          ),
          Container(
            color: Colors.red,
            child: Consumer<ProviderModel>(
              builder: (context, myModel, child) {
                return Text(myModel.litleMonk);
              },
            ),
          )
        ],
      ),
    );
  }
}
