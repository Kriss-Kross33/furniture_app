import 'package:flutter/material.dart';
import 'package:furniture_app/src/utility/color_converter.dart';


class BottomNavWidget extends StatelessWidget{
  final List<BottomNavigationBarItem> bottomNavItems = <BottomNavigationBarItem>[];

  BottomNavWidget(){
    bottomNavItems.add(
      new BottomNavigationBarItem(
        icon: Icon(Icons.event_seat, color: Color(getColorHexFromStr('#F9C335')), size: 30,),
        title: Text(""),
      )
    );
    bottomNavItems.add(
      new BottomNavigationBarItem(
        icon: Icon(Icons.timer, color: Colors.grey, size: 30,),
        title: Text(""),
      )
    );
    bottomNavItems.add(
      new BottomNavigationBarItem(
        icon: Icon(Icons.shopping_cart, color: Colors.grey, size: 30,),
        title: Text(""),
      )
    );
    bottomNavItems.add(
      new BottomNavigationBarItem(
        icon: Icon(Icons.person_outline, color: Colors.grey, size: 30,),
        title: Text(""),
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      elevation: 10.0,
      items: bottomNavItems,
      type: BottomNavigationBarType.fixed,
      onTap: (int index){

      },
    );
  }

}