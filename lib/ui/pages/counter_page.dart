import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/shared/custom_flat_button.dart';
import 'package:flutter_web1/ui/shared/custom_app_menu.dart';

class CounterPage extends StatefulWidget {
  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppMenu(),
          Spacer(),
          Text(
            'Contador: $counter',
            style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomFlatButton(
                  color: Colors.pink,
                  text: 'Incrementar',
                  onPressed: () => setState(() => counter++)),
              CustomFlatButton(
                  color: Colors.pink,
                  text: 'Decrementar',
                  onPressed: () => setState(() => counter--)),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
