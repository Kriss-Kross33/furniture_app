import 'package:flutter/material.dart';
import 'package:furniture_app/src/utility/color_converter.dart';
import 'package:intl/intl.dart';


class ProductCard extends StatelessWidget{
  final String _imagePath, _productName, _description;
  final bool _isFavourite;
  final formatCurrency = new NumberFormat.simpleCurrency();

  ProductCard(this._productName, this._description, this._imagePath, this._isFavourite);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10,),
      child: Material(
        elevation: 5.0,
        child: Container(
          height: 200.0,
          width: double.infinity,
          color: Colors.white,
          child: Stack(
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(width: 4.0,),
                  _productImageWidget(),
                  SizedBox(width: 8.0,),
                  _productInfoWidget(),
                ],
              ),
              addToCartPricePositionedWidget(),
            ],
          ),
        ),
      ),
    );
  }

  Widget addToCartPricePositionedWidget(){
    return Positioned(
      bottom: 0.0,
      right: 0.0,
      child: Row(
        children: <Widget>[
          Container(
            width: 85.0,
            height: 50,
            color: Color(getColorHexFromStr('#F9C335')),
            child: Center(
              child: Text("${formatCurrency.format(215)}", style: TextStyle(color: Colors.white,
              fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: "Quicksand"),),
            ),
          ),
          Material(
            elevation: 3.0,
            child: Container(
              height: 50,
              width: 130.0,
              color: Color(getColorHexFromStr('#F9C335')),
              child: Center(
                child: Text("Add To Cart", style: TextStyle(color: Colors.white,
                  fontSize: 18.0, fontWeight: FontWeight.bold, fontFamily: "Quicksand"),),
            ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _productInfoWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
          child: Row(
            children: <Widget>[
              Text(_productName, style: TextStyle(fontSize: 14, color: Colors.black,
              fontWeight: FontWeight.bold, fontFamily: "Quicksand"), maxLines: 4,),
              SizedBox(width: 85,),
              Material(
                borderRadius: BorderRadius.all(Radius.circular(15.0)),
                elevation: _isFavourite ? 5.0: 0.0,
                child: Container(
                  height: 30.0,
                  width: 30.0,
                  child: _isFavourite? Icon(Icons.favorite, color:Colors.red)
                  :Icon(Icons.favorite_border, color: Colors.grey,),
                  decoration: BoxDecoration(

                  )
                  )
              )
            ],
          ),
        ),
        SizedBox(height: 10,),
        Container(
          width: 200.0,
          child: Text(_description, textAlign: TextAlign.left, style: TextStyle(fontSize: 13, color: Colors.grey,
          fontFamily: "Oxygen"))),
        
      ],
    );
  }

  Widget _productImageWidget(){
    return Padding(
      padding: EdgeInsets.all(2.0),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        width: 150.0,
        height: 150.0,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(_imagePath)
          ),
        ),
      ),
    );
  }

}

final List<ProductCard> productCards = <ProductCard>[
  ProductCard("FinnNaVian", "Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black"
          , "assets/images/ottoman.jpg", true),
          ProductCard("FinnNaVian", "Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black"
          , "assets/images/anotherchair.jpg", false),
          ProductCard("FinnNaVian", "Scandinavian small sized double sofa imported full leather / Dale Italia oil wax leather black", 
          "assets/images/chair.jpg", false),
];