import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/application/search/search_state.dart';

class SearchNotifier extends StateNotifier<SearchState> {
  SearchNotifier() : super(SearchState.empty());
}
