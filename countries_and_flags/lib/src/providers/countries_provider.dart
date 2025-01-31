import 'package:countries_and_flags/api/countries_api.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';
import 'package:countries_and_flags/src/models/country_model.dart';
import 'package:countries_and_flags/src/providers/query_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_provider.g.dart';

@riverpod
FutureOr<List<CountryModel>> countriesProvider(CountriesProviderRef ref) async {
  final api = ref.watch(countriesApiProvider);
  final query = ref.watch(queryProviderProvider);
  final result = query == null ? await api.fetchAll() : await api.search(query);

  return result;
}
