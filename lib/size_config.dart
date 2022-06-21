import 'package:flutter/material.dart';

class SizeCofig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;
  static double? defaultSize;
  static late Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = Orientation.portrait;
  }
}

double getProportionateScreenWidth(double inputWidth) {
  double screenWidth = SizeCofig.screenWidth;
  // 414 is the layout width that designer use or
  // you can say iphone 11 pro width
  return inputWidth * screenWidth / 414.0;
}

double getProportionateScreenHeight(double inputHeight) {
  double screenHeight = SizeCofig.screenHeight;
  // our design use iphone 11 pro that's why we use 815.0
  return screenHeight * inputHeight / 815.0;
}

// for add free space vertically

class VerticalSpacing extends StatelessWidget {
  const VerticalSpacing({
    Key? key,
    this.of = 25,
  }) : super(key: key);
  final double of;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getProportionateScreenHeight(of),
    );
  }
}
