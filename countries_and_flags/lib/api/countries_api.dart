import 'package:countries_and_flags/api/http_client_provider.dart';
import 'package:countries_and_flags/api/models/country_api_model.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_api.g.dart';

@riverpod
CountriesApi countriesApi(CountriesApiRef ref) {
  final client = ref.watch(httpClientProvider);
  return CountriesApi(client);
}

class CountriesApi {
  const CountriesApi(this.client);
  final Dio client;

  Future<List<CountryApiModel>> fetchAll() async {
    final response = await client.get('all?fields=name,flags,cca2');
    return [
      for (final country in response.data) CountryApiModel.fromJson(country)
    ];
  }

  Future<List<CountryApiModel>> search(String country) async {
    final response = await client.get('name/:$country?fields=name,flags,cca2');
    return [
      for (final country in response.data) CountryApiModel.fromJson(country)
    ];
  }
}
