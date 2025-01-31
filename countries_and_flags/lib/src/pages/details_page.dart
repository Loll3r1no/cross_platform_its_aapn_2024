import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/providers/favourite_countries_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class DetailsPage extends ConsumerWidget {
  const DetailsPage({
    super.key,
    required this.country,
  });
  final CountryModel country;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final favourites = ref.watch(favouriteCountriesProviderProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Details'),
        actions: [
          IconButton(
            onPressed: () {
              favourites.contains(country) == true
                  ? ref
                      .read(favouriteCountriesProviderProvider.notifier)
                      .remove(country)
                  : ref
                      .read(favouriteCountriesProviderProvider.notifier)
                      .add(country);
            },
            icon: favourites.contains(country) == true
                ? const Icon(Icons.favorite)
                : const Icon(Icons.favorite_border),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AspectRatio(
            aspectRatio: 16 / 9,
            child: Image.network(country.flags.png),
          ),
          Center(
            child: Text(country.name.official),
          )
        ],
      ),
    );
  }
}
