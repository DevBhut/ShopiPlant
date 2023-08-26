import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:plant_app/constants.dart';
//import 'icon_card.dart';
import 'image_and_icons.dart';
import 'title_and_price.dart';

Color btn1 = kPrimaryColor;
Color btn2 = Colors.white;
Color txt = kPrimaryColor;

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          ImageAndIcons(size: size),
          const TitleAndPrice(title: 'Angelica', country: 'Russia', price: 440,),
          Container(height: kDefaultPadding),
          Row(
            children: [
              MaterialButton(
                onPressed: () {},
                color: kPrimaryColor,
                minWidth: size.width/2,
                height: 75,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                  ),
                ),
                child: const Text('Buy Now',
                    style: TextStyle(
                      color: Colors.white, 
                      fontSize: 20,
                    ),
                  ),
              ),
              Expanded(
                child: MaterialButton(
                onPressed: () {
                  if(btn2==Colors.white)
                  {
                      btn2 = kPrimaryColor;
                      txt = Colors.white;
                  }
                  else if(btn2==kPrimaryColor)
                  {
                      btn2 = Colors.white;
                      txt = kPrimaryColor;
                  }
                },
                color: btn2,
                minWidth: size.width/2,
                height: 75,
                child: Text('Add to Cart',
                    style: TextStyle(
                      color: txt, 
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ]
          ),
        ],
      ),
    );
  }
}

