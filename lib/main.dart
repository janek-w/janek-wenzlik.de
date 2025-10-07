import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/pages/home/home.dart';
import 'package:web_portfolio/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Janek Wenzlik - Portfolio",
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.dark,
      darkTheme: Theme.of(context).copyWith(
        platform: TargetPlatform.android,
        scaffoldBackgroundColor: kBackgroundColor,
        primaryColor: kPrimaryColor,
        canvasColor: kBackgroundColor,
        textTheme: GoogleFonts.latoTextTheme(),
      ),
      builder: (context, widget) => ResponsiveBreakpoints.builder(
        child: ClampingScrollWrapper.builder(context, widget!),
        breakpoints: [
          Breakpoint(start:0, end: 450, name: MOBILE),
          Breakpoint(start:0, end:800, name: TABLET),
          Breakpoint(start: 800, end: 1000, name: TABLET),
          Breakpoint(start:1000, end: 1200, name: DESKTOP),
          Breakpoint(start: 1200, end: 3460, name: "4K"),
        ],
      ),
      home: Home(),
    );
  }
}
