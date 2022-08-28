import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_web1/providers/counter_provider.dart';
import 'package:flutter_web1/ui/shared/custom_flat_button.dart';

class CounterProviderView extends StatelessWidget {
  final String base;

  const CounterProviderView({super.key, required this.base});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (_) => CounterProvider(this.base),
        child: _CounterProviderPageBody());
  }
}

class _CounterProviderPageBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final counterProvider = Provider.of<CounterProvider>(context);
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Spacer(),
        //TITULO PAGINA
        Text('Contador Provider', style: TextStyle(fontSize: 20)),
        FittedBox(
          fit: BoxFit.contain,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Contador: ${counterProvider.counter}',
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
                //llamo al counterProvider para incrementar
                onPressed: () => counterProvider.increment()),
            CustomFlatButton(
                color: Colors.pink,
                text: 'Decrementar',
                //llamo al counterProvider para decrementar
                onPressed: () => counterProvider.decrement()),
          ],
        ),
        const Spacer(),
      ],
    );
  }
}
