import 'dart:math';

import 'package:animal_app/models/animal.dart';
import 'package:animal_app/models/pages_arguments.dart';
import 'package:animal_app/styles/style.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

final List<Animal> _animalList = [
  new Animal('Animal 1', 'Titre 1', 'assets/images/wild_animals.jpeg'),
  new Animal('Animal 2', 'Titre 2', 'assets/images/wild_animals.jpeg'),
  new Animal('Animal 3', 'Titre 3', 'assets/images/wild_animals.jpeg'),
  new Animal('Animal 4', 'Titre 4', 'assets/images/wild_animals.jpeg'),
  new Animal('Animal 5', 'Titre 5', 'assets/images/wild_animals.jpeg'),
];

class Carousel extends StatefulWidget {
  @override
  _CarouselState createState() => _CarouselState();
}

class _CarouselState extends State<Carousel> {
  final PageController _pageController =
      PageController(initialPage: 0, viewportFraction: 0.8);

  List<DocumentSnapshot> _animals = [];

  final double scaleFraction = 0.9;
  final double scaleDepth = 0.5;
  final double fullScale = 1.0;
  final double viewPortFraction = 0.8;

  double page = 0;

  bool _handlePageNotification(ScrollNotification notification) {
    if (notification.depth == 0 && notification is ScrollUpdateNotification) {
      setState(() {
        page = _pageController.page;
      });
    }
    return false;
  }

 

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        controller: _pageController,
        itemCount: _animalList.length,
        itemBuilder: (context, index) {
          final scale = max(scaleFraction, (fullScale - (index - page).abs()));
          final depth = max(scaleDepth, (fullScale - (index - page).abs()));

          return AnimalCard(_animalList[index], scale, depth);
        },
      ),
    );
  }
}

class AnimalCard extends StatelessWidget {
  final Animal animal;
  final double scale;
  final double scaleDepth;
  const AnimalCard(this.animal, this.scale, this.scaleDepth, {Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform.scale(
      scale: scale,
      alignment: Alignment.centerLeft,
      child: Neumorphic(
        padding: const EdgeInsets.all(18.0),
        margin: EdgeInsets.fromLTRB(0, 32, 32, 32),
        style: NeumorphicStyle(
          color: vintageBg,
          depth: NeumorphicTheme.depth(context) * 4 * scaleDepth,
          boxShape: NeumorphicBoxShape.roundRect(BorderRadius.circular(12.0)),
        ),
        child: GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: () {
            Navigator.pushNamed(
              context,
              '/detail',
              arguments: MainPageArguments(
                animal: animal,
                cardPosition: CardPosition.getPosition(context),
              ),
            );
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Image.asset(
                  animal.image,
                  width: screenWidth(context),
                  fit: BoxFit.fitWidth,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  animal.name,
                  style: TextStyle(
                    fontSize: 30.0,
                    color: orangeText,
                    fontWeight: FontWeight.w700,
                  ),
                  softWrap: false,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10.0),
                child: Text(
                  animal.title,
                  style: TextStyle(
                    fontSize: 20.0,
                    color: blackText,
                  ),
                  //softWrap: false,
                  //overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
