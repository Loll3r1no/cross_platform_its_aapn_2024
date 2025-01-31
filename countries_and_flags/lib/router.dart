import 'package:countries_and_flags/src/models/country_model.dart';
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
    GoRoute(
      path: '/details',
      name: 'details',
      builder: (context, state) {
        final country = state.extra! as CountryModel;
        return DetailsPage(country: country);
      },
    ),
    GoRoute(
      path: '/favourites',
      name: 'favourites',
      builder: (context, state) => const FavouritesPage(),
    )
  ],
);
