import 'package:flutter_web1/ui/views/counter_view.dart';
import 'package:fluro/fluro.dart';
import '../ui/views/counter_error_view.dart';
import '../ui/views/counter_provider_view.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: _counterStatefulHandler);

    router.define('/stateful',
        handler: _counterStatefulHandler,
        transitionDuration: Duration(milliseconds: 100),
        transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
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

    //ruta 404
    router.notFoundHandler = _notFoundHandler;
  }

//manejadores o handlers
//Le paso parametros por URL
  static Handler _counterStatefulHandler = Handler(
    handlerFunc: (context, params) {
      // print(params['base']?[0]);
      return CounterView(base: params['base']?[0] ?? '5');
    },
  );

  static Handler _counterProviderHandler =
      Handler(handlerFunc: (contex, params) => CounterProviderView());

  static Handler _notFoundHandler =
      Handler(handlerFunc: (context, params) => CounterErrorView());
}
