import 'package:animal_app/styles/style.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class SearchTextField extends StatefulWidget {
  final ValueChanged<String> onChanged;

  SearchTextField({this.onChanged});

  @override
  _SearchTextFieldState createState() => _SearchTextFieldState();
}

class _SearchTextFieldState extends State<SearchTextField> {
  TextEditingController _controller;

  @override
  void initState() {
    _controller = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Neumorphic(
      style: NeumorphicStyle(
        color: brownText.withOpacity(.4),
        depth: NeumorphicTheme.embossDepth(context),
        boxShape: NeumorphicBoxShape.stadium(),
      ),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: TextFormField(
        cursorColor: vintageBg,
        cursorRadius: Radius.circular(2.0),
        cursorWidth: 3,
        onChanged: this.widget.onChanged,
        controller: _controller,
        decoration: InputDecoration.collapsed(
          hintText: 'Search...',
          hintStyle: TextStyle(color: whiteText, fontFamily: 'ubuntu'),
        ),
      ),
    );
  }
}