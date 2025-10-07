import 'package:flutter/material.dart';
import 'package:web_portfolio/utils/constants.dart';

class ThemeColors {
  static Color getCaptionColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? kDarkCaptionColor 
        : kLightCaptionColor;
  }
  
  static Color getBackgroundColor(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark 
        ? kDarkBackgroundColor 
        : kLightBackgroundColor;
  }
}