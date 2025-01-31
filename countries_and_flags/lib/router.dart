import 'package:countries_and_flags/src/pages/details_page.dart';
import 'package:countries_and_flags/src/pages/favourites_page.dart';
import 'package:countries_and_flags/src/pages/main_page.dart';
import 'package:go_router/go_router.dart';
import 'logger.dart';
import 'package:talker_flutter/talker_flutter.dart';

final router = GoRouter(
  observers: [
    TalkerRouteObserver(talker),
  ],
  routes: [
    GoRoute(
      path: '/',
      name: 'main',
      builder: (context, state) => const MainPage(),
    ),
    /*GoRoute(
        path: '/detaiuls/:cca2',
        name: 'details',
        builder: (context, state) {
          final cca2 = state.pathParameters['cca2'];
          return DetailsPage(cca2: cca2!);
        }),*/
    GoRoute(
      path: '/favourites',
      name: 'favourites',
      builder: (context, state) => const FavouritesPage(),
    )
  ],
);
