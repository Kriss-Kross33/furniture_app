import 'package:flutter/material.dart';
import 'package:furniture_app/src/utility/color_converter.dart';



var screenTopBgWidget =  Stack(
      children: <Widget>[
        topContainerBg(),
        circlePositionedWidgetBig(),
        circlePositionedWidgetSmall(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 35.0,),
              Row(
                children: <Widget>[
                  _profileImageContainer(),
                  Spacer(),
                  topMenuButton(),
                ],
              ),
              
              topIconRow(),
            ],
          ),
        ),
       
            

  ],
);

Widget topMenuButton(){
    return Container(
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: (){
          //  Navigator.push(context, new MaterialPageRoute(
          //    builder: (context){
          //      return DashboardScreen();
          //    }
          //  ));
        },
        icon: Icon(Icons.settings, color: Colors.white,),
        iconSize: 30.0,
      ),
    );
  }

Widget circlePositionedWidgetSmall(){
    return Positioned(
      bottom: 300,
      left: 200,
      child: Container(
        height: 300.0,
        width: 300.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(150)),
          color: Color(getColorHexFromStr("#fee16b")).withOpacity(0.5),
        ),
      ),
    );
}

Widget topIconRow(){
  return Padding(
    padding: EdgeInsets.symmetric(vertical: 30),
    child: Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
            TopIconsWidgetColumn(Icons.folder_shared, "Favourites"),
            TopIconsWidgetColumn(Icons.account_balance_wallet, "Wallet"),
            TopIconsWidgetColumn(Icons.print, "Footprint"),
            TopIconsWidgetColumn(Icons.computer, "Coupon"),
          ],
        ),
  );
}

Widget circlePositionedWidgetBig(){
  return Positioned(
  bottom: 250.0,
  right: 100.0,
  child: Container(
    height: 400.0,
    width: 400.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(200)),
      color: Color(getColorHexFromStr("#fee16b")).withOpacity(0.5),
    ),
  ),
);
}
///
Widget topContainerBg() { 
  return Container(
  height: 250,
  width: double.infinity,
  color: Color(getColorHexFromStr("#fdd148")),
);
}



Widget _profileImageContainer() {
  return Container(
    alignment: Alignment.topLeft,
    height: 60.0,
    width: 60.0,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      border: Border.all(
        color: Colors.white,
        style: BorderStyle.solid,
        width: 3.0,
      ),
      image: DecorationImage(
        image: AssetImage("assets/images/chris.jpg")
      )
    ),
  );
}

class TopIconsWidgetColumn extends StatelessWidget{
  final IconData icon;
  final String labelText;

  TopIconsWidgetColumn(this.icon, this.labelText);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          child: IconButton(
            icon: Icon(icon, size: 50, color: Colors.white,),
            onPressed: (){
                  
                },
              ),
        ),
        SizedBox(height: 10,),
        Text(labelText, textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 12.0, fontFamily: "Quicksand"))
      ],
    );
  }

}




