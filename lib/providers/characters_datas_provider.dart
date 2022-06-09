import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:rickandmorty/domain/character/character.dart';
import 'package:rickandmorty/providers/api_provider.dart';

final charactersDatasProvider = FutureProvider.autoDispose<List<CharacterModel>>(
  (ref) async {
    return ref.read(apiProvider).getCharactersDatas().then((characters) {
      final List<CharacterModel> characterList = [];
      for (var i = 0; i < 10; i++) {
        characterList.add(
          CharacterModel(
            characterName: characters[i]["name"],
            characterImgUrl: characters[i]["image"],
          ),
        );
      }
      return characterList;
    });
  },
);
