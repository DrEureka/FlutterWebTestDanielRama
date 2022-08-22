// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/shared/custom_flat_button.dart';

class CounterErrorView extends StatefulWidget {
  const CounterErrorView({super.key});

  @override
  State<CounterErrorView> createState() => _CounterErrorViewState();
}

class _CounterErrorViewState extends State<CounterErrorView> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('404',
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          const Text('No se encontró la página.',
              style: TextStyle(fontSize: 20)),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: CustomFlatButton(
              text: 'Regresar',
              color: Colors.pink,
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
            ),
          ),
        ],
      ),
    );
  }
}
