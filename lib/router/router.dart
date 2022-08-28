import 'package:flutter_web1/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';
import '../ui/views/counter_error_view.dart';
import '../ui/views/counter_provider_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: _counterHandler);

    router.define('/counter',
        handler: _counterHandler, transitionType: TransitionType.fadeIn);
    //definir ruta stateful
    router.define('/stateful',
        handler: _counterStatefulHandler,
        transitionDuration: Duration(milliseconds: 100),
        transitionType: TransitionType.fadeIn);
    //definir ruta provider
    router.define(
      '/provider',
      handler: _counterProviderHandler,
      transitionDuration: Duration(milliseconds: 100),
      transitionType: TransitionType.fadeIn,
    );

    router.notFoundHandler = _notFoundHandler;
  }

//manejadores o handlers

  static Handler _counterHandler = Handler(
      handlerFunc: (context, params) => CounterView(
            title: 'Counter',
          ));

  static Handler _counterProviderHandler =
      Handler(handlerFunc: (contex, params) => CounterProviderView());

  static Handler _counterStatefulHandler = Handler(
      handlerFunc: (contex, params) => CounterView(
            title: 'Stateful',
          ));

  static Handler _notFoundHandler =
      Handler(handlerFunc: (context, params) => CounterErrorView());
}
