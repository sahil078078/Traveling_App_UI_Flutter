import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../constants.dart';
import '../../../size_config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: getProportionateScreenHeight(50),
      width: getProportionateScreenWidth(313),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: const Color(0xff3e4067),
          width: 0.65,
        ),
        boxShadow: const [
          BoxShadow(
            offset: Offset(3, 3),
            color: Colors.black,
            blurRadius: 10,
            spreadRadius: -2,
          ),
        ],
      ),
      child: TextField(
        style: GoogleFonts.nunito(
          color: Colors.black87,
          fontSize: getProportionateScreenWidth(16),
        ),
        decoration: InputDecoration(
          suffixIcon: const Icon(CupertinoIcons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: getProportionateScreenWidth(kDefaultPadding),
            vertical: getProportionateScreenHeight(kDefaultPadding / 2),
          ),
          hintText: 'Search Your Destination',
          hintStyle: GoogleFonts.poly(
            color: Colors.black54,
            fontWeight: FontWeight.w400,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5),
            borderSide: const BorderSide(
              color: Colors.black12,
            ),
          ),
        ),
        autofocus: false,
      ),
    );
  }
}
