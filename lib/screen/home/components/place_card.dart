import 'package:flutter/material.dart';
import 'package:flutter_traveling_app/screen/home/components/travelers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../../../constants.dart';
import '../../../models/travelspot.dart';
import '../../../size_config.dart';

class PlaceCard extends StatelessWidget {
  final GestureTapCallback press;
  final TravelSpot travelSpot;
  final bool isFullCard;
  const PlaceCard({
    Key? key,
    this.isFullCard = false,
    required this.press,
    required this.travelSpot,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(isFullCard ? 158 : 137),
      child: Column(
        children: <Widget>[
          AspectRatio(
            aspectRatio: isFullCard ? 1.09 : 1.29,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(20),
                  topRight: Radius.circular(20),
                ),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(travelSpot.image),
                ),
              ),
            ),
          ),
          Container(
            width: getProportionateScreenWidth(isFullCard ? 158 : 137),
            padding: EdgeInsets.all(getProportionateScreenWidth(20)),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [kDefaultShadow],
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20),
              ),
            ),
            child: Column(
              children: <Widget>[
                Text(
                  travelSpot.name,
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poly(
                    fontSize: isFullCard ? 17 : 12,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                if (isFullCard)
                  Text(
                    DateFormat('dd').format(travelSpot.date),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                if (isFullCard)
                  Text(
                    DateFormat('MMM yyyy').format(travelSpot.date),
                    style: Theme.of(context).textTheme.headline6,
                  ),
                const VerticalSpacing(of: 10),
                Travelers(users: travelSpot.user)
              ],
            ),
          )
        ],
      ),
    );
  }
}
