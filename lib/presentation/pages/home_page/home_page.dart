import 'package:flutter/material.dart';
import 'package:rickandmorty/presentation/common_widgets/colors.dart';
import 'package:rickandmorty/presentation/pages/home_page/widgets/home_page_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 200,
        flexibleSpace: FlexibleSpaceBar(
          centerTitle: true,
          background: Image.asset(
            'assets/background.png',
            fit: BoxFit.cover,
            colorBlendMode: BlendMode.multiply,
            color: greyShade500,
          ),
          titlePadding: const EdgeInsetsDirectional.only(bottom: 8),
        ),
      ),
      body: const HomePageBody(),
    );
  }
}
