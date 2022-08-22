import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/shared/custom_flat_button.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  int counter = 10;
  @override
  Widget build(BuildContext context) {
    return Column(
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
    );
  }
}
