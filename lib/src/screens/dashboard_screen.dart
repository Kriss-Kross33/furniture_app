import 'package:flutter/material.dart';
import 'package:furniture_app/src/screens/widgets/screen_top_bg.dart';


class DashboardScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return DashboardScreenState();
  }

}


class DashboardScreenState extends State<DashboardScreen>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          screenTopBgWidget,
        ],
      ),
    );
  }
  
}