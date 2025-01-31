import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'query_provider.g.dart';

@riverpod
class QueryProvider extends _$QueryProvider {
  @override
  String? build() {
    return null;
  }

  void update(String? input) {
    state = input;
  }

  void reset() {
    state = null;
  }
}
