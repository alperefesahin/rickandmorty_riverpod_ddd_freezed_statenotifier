import 'package:flutter/material.dart';
import 'package:rickandmorty/presentation/common_widgets/colors.dart';
import 'package:rickandmorty/presentation/pages/home_page/constants.dart/texts.dart';
import 'package:sizer/sizer.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      width: 100.w,
      height: 5.h,
      decoration: const BoxDecoration(
        color: blueGreyColor,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 25),
            width: 70.w,
            height: 20.h,
            child: const Center(
              child: TextField(
                cursorColor: whiteColor,
                style: TextStyle(color: whiteColor),
                decoration: InputDecoration.collapsed(
                  hintText: searchCharactersText,
                  hintStyle: TextStyle(color: whiteColor),
                ),
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
            ),
          ),
        ],
      ),
    );
  }
}
