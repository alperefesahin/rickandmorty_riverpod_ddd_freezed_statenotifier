import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/application/search/search_event.dart';
import 'package:rickandmorty/application/search/search_notifier.dart';
import 'package:rickandmorty/application/search/search_state.dart';
import 'package:rickandmorty/providers/characters_datas_provider.dart';

final searchProvider = StateNotifierProvider.autoDispose<SearchNotifier, SearchState>(
  (ref) {
    final characterModelList = ref.watch(charactersDatasProvider).whenOrNull(data: (data) => data);

    return SearchNotifier()
      ..mapEventsToState(
        UpdateListItems(
          characterModelList: characterModelList ?? [],
        ),
      );
  },
);
