import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

import '../constants.dart';

AppBar buildAppBar({
  bool isTransperent = false,
  String? title,
}) {
  return AppBar(
    centerTitle: true,
    title: Text(
      title ?? '',
      style: GoogleFonts.nunito(
        color: kTextColor,
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: isTransperent ? Colors.transparent : Colors.white,
    elevation: 0.0,
    systemOverlayStyle: const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
    leading: IconButton(
      onPressed: () {},
      icon: const Icon(
        Icons.menu,
        color: kIconColor,
      ),
    ),
    actions: [
      IconButton(
        onPressed: () {},
        icon: ClipOval(
          child: Image.asset('assets/images/profile.png'),
        ),
      ),
    ],
  );
}
