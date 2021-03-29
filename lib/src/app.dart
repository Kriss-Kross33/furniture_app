import 'package:flutter/material.dart';
import 'package:furniture_app/src/utility/color_converter.dart';
import 'screens/furniture_home.dart';


class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     title: "Furniture App",
     home: FurnitureHome(),
     theme: appTheme,
   );
  }

}

ThemeData appTheme =
    ThemeData(primaryColor: Color(getColorHexFromStr("#fdd148")), fontFamily: 'Oxygen');