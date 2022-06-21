import 'package:flutter/material.dart';
import 'package:flutter_traveling_app/components/section_title.dart';
import 'package:flutter_traveling_app/screen/home/components/popular_places.dart';
import 'package:flutter_traveling_app/size_config.dart';
import 'home_header.dart';
import 'top_travellers.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      clipBehavior: Clip.none,
      child: Column(
        children: [
          const HomeHeader(),
          SizedBox(height: getProportionateScreenHeight(42)),
          const PopularPlaces(),
          SectionTitle(
            title: 'Top Travelers On Spark',
            press: () {},
          ),
          const TopTravellers(),
          const VerticalSpacing(),
        ],
      ),
    );
  }
}
