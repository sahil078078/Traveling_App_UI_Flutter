import 'package:flutter/material.dart';
import 'package:flutter_traveling_app/models/travelspot.dart';
import 'package:flutter_traveling_app/screen/home/components/place_card.dart';
import '../../../components/section_title.dart';
import '../../../size_config.dart';
import 'dart:developer';

class PopularPlaces extends StatelessWidget {
  const PopularPlaces({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          press: () {
            // log('pressed');
          },
          title: 'Right Now At Spark',
        ),
        const VerticalSpacing(),
        SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                travelSpot.length,
                (index) => Padding(
                  padding: EdgeInsets.only(
                    left: getProportionateScreenWidth(20),
                  ),
                  child: PlaceCard(
                    press: () {
                      log('PlaceCard Index : $index');
                    },
                    travelSpot: travelSpot[index],
                  ),
                ),
              ),
              SizedBox(
                width: getProportionateScreenWidth(20),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
