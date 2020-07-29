import 'package:animal_app/models/animal.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';

class ItemPageArguments {
  final Animal animal;

  ItemPageArguments({this.animal});
}

class MainPageArguments {
  final Animal animal;
  final CardPosition cardPosition;

  MainPageArguments({this.animal, @required this.cardPosition});
}

class CardPosition {
  final double left;
  final double top;
  final double right;
  final double bottom;

  factory CardPosition.getPosition(BuildContext context) {
    //search widget
    final renderBox = context.findRenderObject() as RenderBox;
    //get position widget
    final position = renderBox.localToGlobal(Offset.zero);
    //get size widget
    final size = renderBox.size;
    //get screen size
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;

    return CardPosition(
        left: position.dx,
        top: position.dy,
        right: screenWidth - size.width - position.dx,
        bottom: screenHeight - size.height - position.dy);
  }

  CardPosition({this.left = 0, this.top = 0, this.right = 0, this.bottom = 0});
}
