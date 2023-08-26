import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 68,
      decoration: BoxDecoration(
        color: kBackgroundColor,
        boxShadow: [
          BoxShadow(
            blurRadius: 30,
            color: kPrimaryColor.withOpacity(0.28),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset('assets/icons/flower.svg')
          ),
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset('assets/icons/heart-icon.svg')
          ),
          IconButton(
            onPressed: () {}, 
            icon: SvgPicture.asset('assets/icons/user-icon.svg')
          ),
        ],
      ),
    );
  }
}