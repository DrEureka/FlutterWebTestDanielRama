import 'package:flutter/material.dart';
import 'package:flutter_web1/locator.dart';
import 'package:flutter_web1/router/route_generator.dart';
import 'package:flutter_web1/services/navigation_service.dart';
import 'package:flutter_web1/ui/layout/main_layout_page.dart';

void main() {
  setupLocator();
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
      onGenerateRoute: RouteGenerator.generateRoute,
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? CircularProgressIndicator(),
        );
      },
    );
  }
}
