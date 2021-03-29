import 'package:flutter/material.dart';


class FurnitureCategoryItem extends StatelessWidget{
  final String imagePath;
  final String label;

  FurnitureCategoryItem(this.imagePath, this.label);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75.0,
      width: MediaQuery.of(context).size.width / 4,
      child: Column(
        children: <Widget>[
          Container(
            height: 50,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(imagePath),
              ),
            ),
            
            ),
          Text(label, style: TextStyle(color: Colors.black, fontSize: 12,
          fontFamily: "Quicksand", fontWeight: FontWeight.bold),)
        ],
      ),
    );
  }

}

final List<FurnitureCategoryItem> categoryItems = <FurnitureCategoryItem>[
  FurnitureCategoryItem("assets/images/sofas.png", "Sofa"),
  FurnitureCategoryItem("assets/images/wardrobe.png", "Wardrobe"),
  FurnitureCategoryItem("assets/images/desk.png", "Desk"),
  FurnitureCategoryItem("assets/images/dressers.png", "Dresser"),
];