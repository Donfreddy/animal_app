import 'package:animal_app/pages/404.dart';
import 'package:animal_app/pages/home.dart';
import 'package:flutter/material.dart';

Route geneateRoute(RouteSettings settings) {
  //check named route and return page
  switch (settings.name) {
    case '/':
      return MaterialPageRoute<Widget>(builder: (context) => HomePage());
    default:
      return MaterialPageRoute<Widget>(builder: (context) => Page404());
  }
}
