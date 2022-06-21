import 'package:flutter/material.dart';
import 'package:flutter_traveling_app/models/user.dart';

import '../../../constants.dart';
import '../../../models/travelspot.dart';
import '../../../size_config.dart';

class Travelers extends StatelessWidget {
  final List<User> users;
  const Travelers({
    Key? key,
    required this.users,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int totalUser = 0;
    return SizedBox(
      height: 30,
      width: double.infinity,
      child: Stack(
        alignment: Alignment.center,
        children: [
          ...List.generate(
            travelSpot[0].user.length,
            (index) {
              totalUser++;
              return Positioned(
                left: 22 * index.toDouble(),
                child: buildTravelFace(index: index),
              );
            },
          ),
          Positioned(
            left: 22 * totalUser.toDouble(),
            child: SizedBox(
              width: getProportionateScreenWidth(28),
              height: getProportionateScreenWidth(28),
              child: TextButton(
                style: TextButton.styleFrom(
                  alignment: Alignment.center,
                  backgroundColor: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {},
                child: const Center(
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 14,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  ClipOval buildTravelFace({required int index}) {
    return ClipOval(
      child: Image.asset(
        travelSpot.elementAt(0).user.elementAt(index).image,
        height: getProportionateScreenWidth(28),
        width: getProportionateScreenWidth(28),
        fit: BoxFit.cover,
      ),
    );
  }
}
