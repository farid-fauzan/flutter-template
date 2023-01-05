oimport 'package:flutter/material.dart';
import 'package:kimo/constants.dart';
import 'package:kimo/screens/home/components/home_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Kimo App',
      theme: ThemeData(
        scaffoldBackgroundColor: kBackgorundColor,
        // primarySwatch: Colors.purple,
        primarySwatch: Palette.kToDark,
        primaryColor: kPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextColor),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomeScreen(),
    );
  }
}
