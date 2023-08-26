import 'package:flutter/material.dart';
import 'package:plant_app/constants.dart';
import 'featured_plants.dart';
import 'recomended_plants.dart';
//import 'package:flutter_svg/flutter_svg.dart';
//import 'package:plant_app/constants.dart';
import 'title_with_more_button.dart';
import 'header_with_searchbox.dart';
//import 'package:plant_app/constants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    // It provides the total height and width of the screen
    Size size = MediaQuery.of(context).size;
    // it enanbles scrolling on small device
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          TitleWithMoreButton(title: 'Recomended', press: () {},),
          const RecomendedPlants(),
          TitleWithMoreButton(title: 'Featured Plants', press: () {},),
          const FeaturedPlants(),
          const SizedBox(height: kDefaultPadding)
        ],
      ),
    );
  }
}

