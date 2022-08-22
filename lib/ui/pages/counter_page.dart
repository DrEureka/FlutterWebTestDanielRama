import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/shared/custom_flat_button.dart';
import 'package:flutter_web1/ui/shared/custom_app_menu.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

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
          Spacer(),
          //TITULO PAGINA
          const Text('Contador Stateful', style: TextStyle(fontSize: 20)),
          FittedBox(
            fit: BoxFit.contain,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                'Contador: $counter',
                style: TextStyle(fontSize: 80, fontWeight: FontWeight.bold),
              ),
            ),
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
          const Spacer(),
        ],
      ),
    );
  }
}
