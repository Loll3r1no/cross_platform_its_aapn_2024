import 'package:flutter_test/flutter_test.dart';
import 'package:pokedex/src/provider/pokemon_list_provider.dart';

void main() {
  group('idFromUrl', () {
    test('a valid url with an integer at the end is parsed', () {
      const input = "https://my.api.com/something/else/9/";

      final number = idFromUrl(input);

      expect(number, equals(9));
    });
    test('a valid url but with no trailing slash will error', () {
      const input = "https://my.api.com/something/else/9";

      void execution() => idFromUrl(input);

      expect(execution, throwsA(anything));
    });
  });
}
