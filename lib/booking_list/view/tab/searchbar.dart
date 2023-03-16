import 'package:alfarha_cargo_app/constant_widgets/colors/custom_colors.dart';
import 'package:alfarha_cargo_app/constant_widgets/image.dart';
import 'package:flutter/material.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 22.0, right: 22, bottom: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 95,
            width: MediaQuery.of(context).size.width / 1.4,
            padding: const EdgeInsets.only(bottom: 15, top: 22),
            child: TextField(
              decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.search,
                    color: primaryColor,
                    size: 29,
                  ),
                  filled: true,
                  fillColor: containerColorblue,
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  disabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      borderSide: BorderSide(
                          width: 1, color: containerBorderColorblue)),
                  hintText: 'Order ID / Mobile / Name',
                  hintStyle: TextStyle(
                      color: grey2, fontSize: 14, fontWeight: FontWeight.w400)),
            ),
          ),
          Container(
              height: 51,
              width: MediaQuery.of(context).size.width / 7.8,
              margin: const EdgeInsets.only(bottom: 22, top: 22),
              decoration: BoxDecoration(
                  color: containerColorblue,
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(width: 1, color: containerBorderColorblue)),
              child: Image.asset(
                scan,
                height: 30,
              ))
        ],
      ),
    );
  }
}
