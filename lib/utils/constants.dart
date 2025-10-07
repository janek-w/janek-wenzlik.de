import 'package:flutter/material.dart';

// Primary color (same for both themes)
const Color kPrimaryColor = Color.fromRGBO(17, 164, 103, 1);

// Dark theme colors
const Color kDarkBackgroundColor = Color.fromRGBO(2, 15, 26, 1);
const Color kDarkCaptionColor = Color.fromRGBO(166, 177, 187, 1);

// Light theme colors
const Color kLightBackgroundColor = Color.fromRGBO(248, 249, 250, 1);
const Color kLightCaptionColor = Color.fromRGBO(108, 117, 125, 1);

// Backward compatibility
const Color kBackgroundColor = kDarkBackgroundColor;
const Color kCaptionColor = kDarkCaptionColor;

// Lets replace all static sizes
const double kDesktopMaxWidth = 1000.0;
const double kTabletMaxWidth = 760.0;
double getMobileMaxWidth(BuildContext context) =>
    MediaQuery.of(context).size.width * .8;
