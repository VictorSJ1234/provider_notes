import 'package:go_router/go_router.dart';
import 'package:provider_tutorial/ui/home.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomepageUi(),
    ),
  ],
);