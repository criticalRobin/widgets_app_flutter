import 'package:go_router/go_router.dart';
import 'package:widgets_app/presentation/screens/screens.dart';

final appRouter = GoRouter(
  initialLocation: "/",
  routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: "/buttons",
      builder: (context, state) => const ButtonsScreen(),
    ),
    GoRoute(
      path: "/cards",
      builder: (context, state) => const CardsScreen(),
    ),
    GoRoute(
      path: "/progress",
      builder: (context, state) => const ProgressScreen(),
    ),
    GoRoute(
      path: "/snack",
      builder: (context, state) => const SnackbarScreen(),
    ),
    GoRoute(
      path: "/container",
      builder: (context, state) => const AnimatedScreen(),
    ),
    GoRoute(
      path: "/controls",
      builder: (context, state) => const UiControlsScreen(),
    ),
    GoRoute(
      path: "/tutorial",
      builder: (context, state) => const AppTutorialScreen(),
    ),
    GoRoute(
      path: "/scroll",
      builder: (context, state) => const InifiniteScrollScreen(),
    ),
  ],
);
