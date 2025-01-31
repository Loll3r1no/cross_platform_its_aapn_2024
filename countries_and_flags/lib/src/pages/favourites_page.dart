import 'package:countries_and_flags/src/providers/favourite_countries_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavouritesPage extends ConsumerWidget {
  const FavouritesPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourites = ref.watch(favouriteCountriesProviderProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Favourites'),
      ),
      body: ListView(
        children: [
          for (final country in favourites)
            ListTile(
              leading: Text(country.cca2),
              title: Text(country.name.official),
              trailing: IconButton(
                  onPressed: () {
                    ref
                        .read(favouriteCountriesProviderProvider.notifier)
                        .remove(country);
                  },
                  icon: const Icon(Icons.remove)),
            )
        ],
      ),
    );
  }
}
