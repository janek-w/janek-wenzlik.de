import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:responsive_framework/responsive_framework.dart';
import 'package:web_portfolio/pages/home/home.dart';
import 'package:web_portfolio/utils/app_themes.dart';
import 'package:web_portfolio/utils/theme_provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (context) => ThemeProvider(),
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) {
        return MaterialApp(
          title: "Janek Wenzlik - Portfolio",
          debugShowCheckedModeBanner: false,
          theme: AppThemes.lightTheme,
          darkTheme: AppThemes.darkTheme,
          themeMode: themeProvider.isDarkMode ? ThemeMode.dark : ThemeMode.light,
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
      },
    );
  }
}
