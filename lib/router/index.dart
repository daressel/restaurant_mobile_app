import 'package:go_router/go_router.dart';
import 'package:restaurant_mobile_app/feature/detailedView/index.dart';
import 'package:restaurant_mobile_app/feature/home/index.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/detailed',
      builder: (context, state) => const DetailedView(name: 'some-name'),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => MyHomePage(),
    ),
  ],
);
