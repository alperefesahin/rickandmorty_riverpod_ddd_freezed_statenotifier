import 'package:freezed_annotation/freezed_annotation.dart';

part 'character.freezed.dart';

@freezed
class CharacterModel with _$CharacterModel {
  factory CharacterModel({
    required String characterName,
    required String characterImgUrl,
  }) = _CharacterModel;
  const CharacterModel._();

  factory CharacterModel.empty() => CharacterModel(characterName: "", characterImgUrl: "");
}
