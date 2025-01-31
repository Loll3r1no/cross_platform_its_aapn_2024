import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'favourite_countries_provider.g.dart';

@riverpod
class FavouriteCountriesProvider extends _$FavouriteCountriesProvider {
  @override
  List<CountryModel> build() {
    ref.keepAlive();
    return [];
  }

  void add(CountryModel country) {
    state = [...state, country];
  }

  void remove(CountryModel country) {
    state = [
      ...state.where(
        (element) => element != country,
      )
    ];
  }
}
