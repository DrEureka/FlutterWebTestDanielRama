import 'package:flutter_web1/router/route_handlers.dart';
import 'package:fluro/fluro.dart';

class Flurorouter {
  static final FluroRouter router = FluroRouter();

  static void configureRoutes() {
    router.define('/', handler: counterStatefulHandler);
    //Stateful Routes--------------------------------------------------------------
    router.define('/stateful',
        handler: counterStatefulHandler,
        transitionDuration: Duration(milliseconds: 100),
        transitionType: TransitionType.fadeIn);

    router.define('/stateful/:base',
        handler: counterStatefulHandler,
        transitionDuration: Duration(milliseconds: 100),
        transitionType: TransitionType.fadeIn);
    //Provider Routes--------------------------------------------------------------
    router.define(
      '/provider',
      handler: counterProviderHandler,
      transitionDuration: Duration(milliseconds: 100),
      transitionType: TransitionType.fadeIn,
    );

    router.define(
      '/dashboard/users/:userid/:roleid',
      handler: dashboardUserHandler,
      transitionDuration: Duration(milliseconds: 100),
      transitionType: TransitionType.fadeIn,
    );

    //Error 404 Route--------------------------------------------------------------
    router.notFoundHandler = notFoundHandler;
  }
}
