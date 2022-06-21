import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_traveling_app/constants.dart';
import 'package:flutter_traveling_app/size_config.dart';

import '../../components/app_bar.dart';
import '../../components/custom_nav_bar.dart';
import 'components/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeCofig().init(context);
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: buildAppBar(isTransperent: true),
      body: const Body(),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
