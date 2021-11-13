import 'package:cafesasii/home/homepage.dart';
import 'package:cafesasii/models/food_details.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';






void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: GoogleFonts.prompt().fontFamily,
        primarySwatch: Colors.brown,
        textTheme: const TextTheme(
          headline1: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold),
          bodyText1: TextStyle(fontSize: 30.0),
          bodyText2: TextStyle(fontSize: 18.0),
        ),
      ),
      initialRoute: '/login',
      routes: {

        HomePage.routeName : (context) => HomePage(),
        FoodDetails.routeName :(context) => FoodDetails(),
      },
    );
  }
}
