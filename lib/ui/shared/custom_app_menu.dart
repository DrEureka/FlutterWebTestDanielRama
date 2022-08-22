import 'package:flutter/material.dart';
import 'package:flutter_web1/services/navigation_service.dart';
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
              //onPressed: () => Navigator.pushNamed(context, '/stateful'),
              onPressed: () => navitationService.navigateTo('/stateful'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButton(
              text: 'Contador Provider',
              // onPressed: () => Navigator.pushNamed(context, '/provider'),
              onPressed: () => navitationService.navigateTo('/provider'),
              color: Colors.black,
            ),
            const SizedBox(width: 10),
            CustomFlatButton(
              text: 'Otra pagina',
              // onPressed: () => Navigator.pushNamed(context, '/cualquiercosa'),
              onPressed: () => navitationService.navigateTo('/cualquiercosa'),
              color: Colors.black,
            ),
          ],
        ));
  }
}
