import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/pages/counter_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Senado HSN',
      initialRoute: '/stateful',
      //home: Container(),
      routes: {'/stateful': (_) => CounterPage()},
    );
  }
}
