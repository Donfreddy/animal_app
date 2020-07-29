import 'package:animal_app/pages/home_drawer.dart';
import 'package:animal_app/styles/style.dart';
import 'package:animal_app/widgets/carousel.dart';
import 'package:animal_app/widgets/search_text_field.dart';
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
      backgroundColor: vintageBg,
      appBar: NeumorphicAppBar(
        leading: null,
        automaticallyImplyLeading: false,
        title: Container(
          padding: EdgeInsets.only(top: 08.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Aplanet',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.w700,
                  letterSpacing: .6,
                ),
              ),
              Text(
                'We love the planet',
                style: TextStyle(
                  fontSize: 13.0,
                  color: brownText,
                ),
              ),
            ],
          ),
        ),
        //centerTitle: true,
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(left: 32.0, top: 10.0),
              child: Container(
                child: Text(
                  'Find Your \nFavorite Animal',
                  style: TextStyle(
                    color: blackText,
                    fontSize: 30.0,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20.0),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 32.0),
              child: SearchTextField(
                onChanged: (search) {
                  setState(() {});
                },
              ),
            ),
            Carousel(),
          ],
        ),
      ),
    );
  }
}
