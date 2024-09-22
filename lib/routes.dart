import 'package:go_router/go_router.dart';
import 'package:provider_tutorial/ui/home.dart';
import 'package:provider_tutorial/ui_2/name_change.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      name: 'home',
      builder: (context, state) => const HomepageUi(),
    ),

    GoRoute(
      path: '/name_change',
      name: 'name_change',
      builder: (context, state) => const NameChange(),
    ),
  ],
);