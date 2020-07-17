import 'package:animal_app/pages/home_drawer.dart';
import 'package:animal_app/styles/style.dart';
import 'package:animal_app/widgets/carousel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      endDrawer: HomeDrawer(),
      backgroundColor: NeumorphicTheme.baseColor(context),
      appBar: NeumorphicAppBar(
        leading: null,
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.only(top: 08.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'aplanet',
                style: TextStyle(
                  fontSize: 20.0,
                  fontFamily: 'ubuntu',
                  fontWeight: FontWeight.w700,
                  letterSpacing: .6,
                ),
              ),
              Text('we love the planet',
                  style: TextStyle(
                      fontSize: 13.0, fontFamily: 'ubuntu', color: subText)),
            ],
          ),
        ),
        //centerTitle: true,
      ),
      body: Container(
        //width: screenWidth(context),
        color: primary,
        child: Column(
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 0, top: 20.0),
              child: Container(
                child: Text('Welcome to aplanet',
                    style: TextStyle(color: subTextColor, fontSize: 30.0, fontFamily: 'ubuntu')),
              ),
            ),
            Carousel(),
            SizedBox(height: 32.0)
          ],
        ),
      ),
    );
  }
}
