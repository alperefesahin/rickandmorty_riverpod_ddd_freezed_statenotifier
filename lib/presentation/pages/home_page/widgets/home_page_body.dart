import 'package:flutter/material.dart';
import 'package:rickandmorty/presentation/pages/home_page/widgets/rick_and_morty_items.dart';
import 'package:rickandmorty/presentation/pages/home_page/widgets/search_bar.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const NeverScrollableScrollPhysics(),
      child: Column(
        children: [
          SearchBar(),
          const RickAndMortyItems(),
        ],
      ),
    );
  }
}
