import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rickandmorty/domain/character/character.dart';
part 'search_state.freezed.dart';
@freezed
class SearchState with _$SearchState {
  factory SearchState({required List<CharacterModel> characterList}) = _SearchState;
  const SearchState._();
  
factory SearchState.empty() => SearchState(characterList: []);
}
