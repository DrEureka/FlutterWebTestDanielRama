import 'package:flutter/material.dart';
import 'package:flutter_web1/locator.dart';
import 'package:flutter_web1/router/router.dart';
import 'package:flutter_web1/services/navigation_service.dart';
import 'package:flutter_web1/ui/layout/main_layout_page.dart';

void main() {
  Flurorouter.configureRoutes(); //configuramos las rutas
  setupLocator(); //
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'Senado HSN',
      initialRoute: '/',
      //onGenerateRoute: RouteGenerator.generateRoute,
      onGenerateRoute:
          Flurorouter.router.generator, //manejador de rutas dinamicas
      navigatorKey: locator<NavigationService>().navigatorKey,
      builder: (_, child) {
        return MainLayoutPage(
          child: child ?? Container(),
        );
      },
    );
  }
}
