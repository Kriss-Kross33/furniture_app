import 'package:flutter/material.dart';
import 'package:furniture_app/src/app.dart';
import 'package:furniture_app/src/screens/dashboard_screen.dart';
import 'package:furniture_app/src/screens/widgets/furniture_category_item.dart';
import 'package:furniture_app/src/screens/widgets/product_card.dart';
import 'package:furniture_app/src/widgets/bottom_nav_widget.dart';
import '../utility/color_converter.dart';



class FurnitureHome extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return FurnitureHomeState();
  }

}


class FurnitureHomeState extends State<FurnitureHome>{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavWidget(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Column(
            children: <Widget>[
              furnitureTopStack(context),
              SizedBox(height: 20.0,),
              funitureCategoryStack(),
              SizedBox(height: 10.0,),
              productColumn(),
            ],
          ),
        ],
      ),
    );
  }

  Widget funitureCategoryStack(){
    return Stack(
      children: <Widget>[
        funitureCategoryContainer(),
        funitureCategoryRow(),
      ],
    );
  }

  Widget productColumn(){
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: productCards,
      ),
    );
  }

  Widget funitureCategoryRow(){
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: categoryItems,
    );
  }

  

  Widget funitureCategoryContainer(){
    return Material(
      elevation: 1.0,
      child: Container(
        height: 80,
      ),
    );
  }

  Widget furnitureTopStack(BuildContext context){
    return Stack(
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
                  
                  profileImageContainer(),
                  Spacer(),
                  topMenuButton(),
                ],
              ),
              SizedBox(height: 30,),
              Text("Hello, Kriss Kross", style: TextStyle(color: Colors.black, fontSize: 26,
              fontFamily: "Quicksand", fontWeight: FontWeight.bold),),
              SizedBox(height: 5,),
              Text("What do you want to buy?", style: TextStyle(color: Colors.black, fontSize: 22,
              fontFamily: "Oxygen"),),
              SizedBox(height: 25,),
              Material(
                elevation: 5.0,
                
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: TextField(

                  controller: TextEditingController(
                    text: "Search",
                  ),
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                  decoration: InputDecoration(
                    
                    contentPadding: EdgeInsets.all( 25.0),
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search, color: appTheme.primaryColor,)
                  ),
                ),
              ),
              SizedBox(height: 10,),
            ],
          ),
        ),
      ],
    );
  }

  Widget topMenuButton(){
    return Container(
      alignment: Alignment.topRight,
      child: IconButton(
        onPressed: (){
           Navigator.push(context, new MaterialPageRoute(
             builder: (context){
               return DashboardScreen();
             }
           ));
        },
        icon: Icon(Icons.menu, color: Colors.white,),
        iconSize: 30.0,
      ),
    );
  }

  Widget profileImageContainer(){
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

  Widget topContainerBg(){
    return Container(
      height: 250,
      width: double.infinity,
      color: Color(getColorHexFromStr("#fdd148")),
    );
  }
  
  Widget circlePositionedWidgetBig(){
    return Positioned(
      bottom: 50.0,
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

  Widget circlePositionedWidgetSmall(){
    return Positioned(
      bottom: 100,
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
  
}
