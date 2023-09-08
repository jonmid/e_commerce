import 'package:go_router/go_router.dart';

import 'package:e_commerce/src/presentation/views/screens/screens.dart';

final appRouter = GoRouter(routes: [
  GoRoute(
    path: '/',
    builder: (context, state) => const Home(),
  ),
  GoRoute(
    path: '/profile',
    builder: (context, state) => const Profile(),
  ),
  GoRoute(
    path: '/bookmarks',
    builder: (context, state) => const Bookmarks(),
  ),
]);
