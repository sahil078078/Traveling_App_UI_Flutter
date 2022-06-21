import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_traveling_app/screen/events/events_screen.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';
import '../size_config.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
      ),
      color: Colors.white,
      child: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            NavigationItem(
              icon: 'assets/icons/chat.svg',
              title: 'Chat',
              press: () {},
            ),
            NavigationItem(
              icon: 'assets/icons/calendar.svg',
              title: 'Events',
              isActive: true,
              press: () {
                Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (context) => const EventScreen(),
                  ),
                );
              },
            ),
            NavigationItem(
              icon: 'assets/icons/friendship.svg',
              title: 'Friends',
              press: () {},
            ),
          ],
        ),
      ),
    );
  }
}

class NavigationItem extends StatelessWidget {
  final String icon, title;
  final GestureTapCallback press;
  final bool isActive;
  const NavigationItem({
    Key? key,
    this.isActive = false,
    required this.icon,
    required this.title,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        padding: const EdgeInsets.all(5),
        height: getProportionateScreenWidth(60),
        width: getProportionateScreenWidth(60),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [if (isActive) kDefaultShadow],
        ),
        child: Column(
          children: [
            SvgPicture.asset(
              icon,
              height: 28,
              color: kTextColor,
            ),
            const Spacer(),
            Text(
              title,
              style: GoogleFonts.poppins(
                fontSize: 11,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
