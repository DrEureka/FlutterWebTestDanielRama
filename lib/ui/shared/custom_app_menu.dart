import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  const CustomAppMenu({super.key});

  @override
  Widget build(BuildContext context) {
    print('AppBar Creado');
    return Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        width: double.infinity,
        child: Row(
          children: [
            CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () => Navigator.pushNamed(context, '/stateful'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButton(
              text: 'Contador Provider',
              onPressed: () => Navigator.pushNamed(context, '/provider'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButton(
              text: 'Otra pagina',
              onPressed: () => Navigator.pushNamed(context, '/cualquiercosa'),
              color: Colors.black,
            ),
          ],
        ));
  }
}
