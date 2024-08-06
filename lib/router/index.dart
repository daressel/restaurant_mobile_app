import 'package:go_router/go_router.dart';
import 'package:restaurant_mobile_app/feature/detailedView/index.dart';

// GoRouter configuration
final _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const DetailedView(name: 'some-name'),
    ),
  ],
);
