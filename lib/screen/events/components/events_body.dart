import 'package:flutter/material.dart';
import 'package:flutter_traveling_app/constants.dart';
import 'package:flutter_traveling_app/models/travelspot.dart';
import 'package:flutter_traveling_app/screen/home/components/place_card.dart';
import 'package:flutter_traveling_app/size_config.dart';
import 'package:google_fonts/google_fonts.dart';

class EventScreenBody extends StatelessWidget {
  const EventScreenBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: getProportionateScreenWidth(25),
        ),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 25),
            child: Wrap(
              runSpacing: 20,
              alignment: WrapAlignment.spaceBetween,
              children: [
                ...List.generate(
                  travelSpot.length,
                  (index) => PlaceCard(
                    isFullCard: true,
                    press: () {},
                    travelSpot: travelSpot.elementAt(index),
                  ),
                ),
                Container(
                  height: getProportionateScreenWidth(305),
                  width: getProportionateScreenWidth(158),
                  decoration: BoxDecoration(
                    color: const Color(0xff6a6c93).withOpacity(0.099),
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: const Color(0xffebe8f6),
                      width: 2,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: getProportionateScreenWidth(53),
                        width: getProportionateScreenWidth(53),
                        child: TextButton(
                          style: TextButton.styleFrom(
                              backgroundColor: kPrimaryColor,
                              padding: EdgeInsets.zero,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                              )),
                          onPressed: () {},
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                            size: getProportionateScreenWidth(35),
                          ),
                        ),
                      ),
                      const VerticalSpacing(of: 10),
                      Text(
                        'Add New Place',
                        style: GoogleFonts.nunito(
                          fontSize: 12,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
