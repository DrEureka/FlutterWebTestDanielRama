import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/shared/custom_flat_button.dart';

class CustomAppMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 50,
        child: Row(
          children: [
            CustomFlatButton(
              text: 'Contador Stateful',
              onPressed: () {},
              color: Colors.black,
            ),
          ],
        ));
  }
}
