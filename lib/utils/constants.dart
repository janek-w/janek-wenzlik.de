import 'package:flutter/material.dart';

const Color kPrimaryColor = Color.fromRGBO(17, 164, 103, 1);
const Color kBackgroundColor = Color.fromRGBO(2, 15, 26, 1);
const Color kCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
