import 'package:animal_app/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
// import 'package:provider/provider.dart';

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);

  final double scaleFraction = 0.9;
  final double scaleDepth = 0.5;
  final double fullScale = 1.0;
  final double viewPortFraction = 0.8;

  double page = 0;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Transform.scale(
        scale: .7,
        //alignment: Alignment.centerLeft,
        child: Neumorphic(
          padding: EdgeInsets.all(18.0),
          margin: EdgeInsets.fromLTRB(0, 32, 32, 32),
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            color: primary,
            //depth: NeumorphicTheme.depth(context) * 2 * scaleDepth,
            depth: 8.0,
            boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12.0)),
          ),
          child: GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Image.asset(
                    "assets/images/wild_animals.jpeg",
                    width: screenWidth(context),
                    fit: BoxFit.fitWidth,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Wild Animals',
                    style: TextStyle(
                        fontSize: 30.0,
                        color: subTextColor,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'ubuntu'),
                    softWrap: false,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10.0),
                  child: Text(
                    'Africa’s endangered species.',
                    style: TextStyle(
                        fontSize: 20.0,
                        color: subTextColor,
                        fontFamily: 'ubuntu'),
                    //softWrap: false,
                    //overflow: TextOverflow.fade,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
