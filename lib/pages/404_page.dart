import 'package:flutter/material.dart';
//import 'package:flutter/widgets.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class Page404 extends StatelessWidget {
  const Page404({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: NeumorphicTheme.baseColor(context),
        resizeToAvoidBottomPadding: false,
        appBar: NeumorphicAppBar(),
        body: Center(
          child: Column(
            children: <Widget>[
              Text('Page not found'),
            ],
          ),
        ));
  }
}
