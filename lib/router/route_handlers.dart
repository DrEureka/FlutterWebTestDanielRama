import 'package:fluro/fluro.dart';

import '../ui/views/counter_error_view.dart';
import '../ui/views/counter_provider_view.dart';
import '../ui/views/counter_view.dart';

//manejadores o handlers
//Le paso parametros por URL
final Handler counterStatefulHandler = Handler(
  handlerFunc: (context, params) {
    // print(params['base']?[0]);
    return CounterView(base: params['base']?.first ?? '5');
  },
);

final Handler counterProviderHandler = Handler(handlerFunc: (contex, params) {
  return CounterProviderView(base: params['q']?.first ?? '10');
});

final Handler dashboardUserHandler = Handler(handlerFunc: (contex, params) {
  print(params);

  return CounterErrorView();
});

final Handler notFoundHandler =
    Handler(handlerFunc: (context, params) => CounterErrorView());
