import 'package:animal_app/models/pages_arguments.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:animal_app/routes/router.dart';
import 'package:animal_app/styles/style.dart';
import 'package:flutter/material.dart';

class AnimalInfo extends StatefulWidget {
  final MainPageArguments args;

  const AnimalInfo(MainPageArguments arguments, {Key key, this.args})
      : super(key: key);
  @override
  _AnimalInfoState createState() => _AnimalInfoState();
}

class _AnimalInfoState extends State<AnimalInfo> {
  AnimationPageInjection animationPageInjection;

  ///check page transistion end
  bool get _transistionPageEnd =>
      animationPageInjection.animationPage.value == 1;

  @override
  void initState() {
    // get all data here

    super.initState();
  }

  @override
  void didChangeDependencies() {
    //update animation injection
    animationPageInjection = AnimationPageInjection.of(context);
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NeumorphicAppBar(),
      backgroundColor: vintageBg,
      body: Center(
        child: Container(
          child: Text(
            'Detail page',
            style: TextStyle(color: blackText),
          ),
        ),
      ),
    );
  }
}
