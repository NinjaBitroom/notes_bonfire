import 'package:go_router/go_router.dart';
import 'package:notes_bonfire/routes/home_route.dart' as hr;

abstract final class AppRouter {
  static final router = GoRouter(routes: routes);

  static final routes = [
    ...hr.$appRoutes,
  ];
}
