import 'package:flutter/material.dart';
import 'package:flutter_web1/router/route_generator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Senado HSN',
      initialRoute: '/stateful',
      onGenerateRoute: RouteGenerator.generateRoute,
    );
  }
}
