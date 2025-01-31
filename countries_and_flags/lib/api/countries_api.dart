import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'countries_api.g.dart';

@riverpod
CountriesApi countruesApi(CountruesApiRef ref) {
  return CountriesApi();
}

class CountriesApi {
  const CountriesApi(this.client);
  final Dio client;

  Future<>
}
