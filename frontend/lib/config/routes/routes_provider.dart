import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:memo/config/routes/routes.dart';

final routesProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: RouteLocation.home,
    navigatorKey: navigationKey,
    routes: appRoutes,
  );
});
