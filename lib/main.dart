import 'package:flutter/material.dart';
import 'package:insta_responsivo_app/pages/home/HomePage.dart';
import 'package:responsive_framework/responsive_framework.dart';

void main() {
  runApp(InstaResposivo());
}

class InstaResposivo extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Insta Responsivo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      builder: (context, widget) => ResponsiveWrapper.builder(
        ClampingScrollWrapper.builder(context, widget),
        defaultScale: true,
        minWidth: 450,
        breakpoints: [
          ResponsiveBreakpoint.resize(450, name: MOBILE),
          ResponsiveBreakpoint.resize(700, name: TABLET),
          ResponsiveBreakpoint.resize(900, name: DESKTOP),
        ],
      ),
      home: HomePage(),
    );
  }
}
