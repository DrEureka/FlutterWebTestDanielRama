import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web1/ui/pages/counter_page.dart';
import 'package:flutter_web1/ui/pages/counter_provider_page.dart';
import 'package:flutter_web1/ui/pages/counter_error_page.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

//Listado de links a paginas flutter
class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/stateful':
        return _fadeRoute(CounterPage(), '/stateful');

      case '/provider':
        return _fadeRoute(CounterProviderPage(), '/provider');
      default:
        return _fadeRoute(CounterErrorPage(), '/404');
    }
  }

//Modelo de transición
  static PageRoute _fadeRoute(Widget child, String routeName) {
    return PageRouteBuilder(
        settings: RouteSettings(name: routeName),
        pageBuilder: (_, __, ___) => child,
        transitionDuration: const Duration(milliseconds: 200),
        transitionsBuilder: (_, animation, __, ___) => (kIsWeb)
            ? FadeTransition(
                opacity: animation,
                child: child,
              )
            : CupertinoPageTransition(
                primaryRouteAnimation: animation,
                secondaryRouteAnimation: __,
                child: child,
                linearTransition: true));
  }
}
