import 'package:flutter/material.dart';
import 'package:flutter_traveling_app/screen/home/components/search_field.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.center,
      children: <Widget>[
        Image.asset(
          'assets/images/home_bg.png',
          height: getProportionateScreenWidth(315),
          fit: BoxFit.cover,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: getProportionateScreenHeight(80)),
            Text(
              'Travelers',
              style: GoogleFonts.poly(
                color: Colors.white,
                fontSize: getProportionateScreenWidth(73),
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Travels Community App',
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            )
          ],
        ),
        Positioned(
          bottom: getProportionateScreenHeight(-25),
          child: const SearchField(),
        )
      ],
    );
  }
}
