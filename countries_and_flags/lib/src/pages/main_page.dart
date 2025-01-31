import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/providers/countries_provider.dart';
import 'package:countries_and_flags/src/providers/favourite_countries_provider.dart';
import 'package:countries_and_flags/src/providers/query_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:reactive_forms/reactive_forms.dart';

class MainPage extends ConsumerWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final countries = ref.watch(countriesProviderProvider);
    final favourites = ref.watch(favouriteCountriesProviderProvider);
    final query = ref.watch(queryProviderProvider);
    final form = FormGroup({'country': FormControl<String>(value: '')});

    return Scaffold(
      appBar: AppBar(
        title: const Text('Countries'),
        actions: [
          Badge.count(
            count: favourites.length,
            child:
                IconButton(onPressed: () {}, icon: const Icon(Icons.favorite)),
          )
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ReactiveForm(
              formGroup: form,
              child: ReactiveTextField<String>(
                  formControlName: 'country',
                  onSubmitted: (control) => control.value == ''
                      ? ref.read(queryProviderProvider.notifier).update(null)
                      : ref
                          .read(queryProviderProvider.notifier)
                          .update(control.value)),
            ),
          ),
          Expanded(
            child: switch (countries) {
              AsyncData(:final value) => GridView(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  children: [
                    for (final country in value)
                      GridTile(
                          child: Card(
                        child: Stack(children: [
                          Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                AspectRatio(
                                    aspectRatio: 16 / 9,
                                    child: Image.network(country.flags.png)),
                                Text(country.name.common)
                              ]),
                          Positioned(
                              right: 2,
                              top: 2,
                              child: IconButton(
                                onPressed: () {
                                  favourites.contains(country) == true
                                      ? ref
                                          .read(
                                              favouriteCountriesProviderProvider
                                                  .notifier)
                                          .remove(country)
                                      : ref
                                          .read(
                                              favouriteCountriesProviderProvider
                                                  .notifier)
                                          .add(country);
                                },
                                icon: favourites.contains(country) == true
                                    ? const Icon(Icons.favorite)
                                    : const Icon(Icons.favorite_border),
                              )),
                        ]),
                      ))
                  ],
                ),
              AsyncLoading() => const Center(
                  child: CircularProgressIndicator(),
                ),
              AsyncError() => const Center(
                  child: Text('Spiase'),
                ),
              // TODO: Handle this case.
              AsyncValue<List<CountryModel>>() => throw UnimplementedError(),
            },
          ),
        ],
      ),
    );
  }
}
