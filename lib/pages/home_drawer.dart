import 'package:animal_app/styles/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:package_info/package_info.dart';
import 'package:url_launcher/url_launcher.dart';

class HomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: NeumorphicBackground(
        backendColor: brownBg,
        child: Column(
          children: <Widget>[
            HeadDrawer(),
            ItemDrawer(
              icon: FontAwesomeIcons.search,
              text: 'Search',
            ),
            Divider(height: 0),
            ItemDrawer(
              icon: FontAwesomeIcons.share,
              text: 'Share app',
            ),
            Divider(height: 0),
            ItemDrawer(
              icon: FontAwesomeIcons.bookmark,
              text: 'Favorites',
            ),
            Divider(height: 0),
            ItemDrawer(
              icon: Icons.group,
              text: 'Contact us',
            ),
            Divider(height: 0),
            ItemDrawer(
              icon: FontAwesomeIcons.infoCircle,
              text: 'About app',
            ),
            Spacer(),
            //wait version info
            About(),
          ],
        ),
      ),
    );
  }
}

//--------------------------- Head Drawer ----------------------------

class HeadDrawer extends StatefulWidget {
  const HeadDrawer({Key key}) : super(key: key);

  @override
  _HeadDrawerState createState() => _HeadDrawerState();
}

class _HeadDrawerState extends State<HeadDrawer> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      child: Center(
        child: NeumorphicText(
          'Aplanet',
          textStyle: NeumorphicTextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            fontFamily: 'ubuntu',
          ),
        ),
      ),
    );
  }
}

//--------------------------- Items Drawer ----------------------------
class ItemDrawer extends StatelessWidget {
  final IconData icon;
  final GestureTapCallback onTap;
  final String text;
  final Widget child;

  const ItemDrawer(
      {this.icon, @required this.text, this.onTap, this.child, Key key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: icon != null
          ? FaIcon(icon, color: NeumorphicTheme.defaultTextColor(context))
          : null,
      title: Text(
        text,
        style: TextStyle(
          color: NeumorphicTheme.defaultTextColor(context),
          fontFamily: 'ubuntu',
        ),
      ),
      trailing: child,
      onTap: onTap,
    );
  }
}

//--------------------------- About ----------------------------
class About extends StatelessWidget {
  const About({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: PackageInfo.fromPlatform(),
      builder: (context, snapshot) {
        if (snapshot.hasData && !snapshot.hasError) {
          return ItemDrawer(
            text: 'Version ' + snapshot.data.version.toString(),
            child: Text('About'),
            onTap: () => showAboutDialog(
              context: context,
              applicationVersion: snapshot.data.version.toString(),
              applicationIcon: Image.asset(
                'assets/icons/icon.png',
                height: 50,
              ),
              children: [
                Text(
                  'Developed by Don Freddy and Karlson Sedoid',
                  style: TextStyle(fontFamily: 'ubuntu'),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.github,
                              color: brownText,
                            ),
                            onPressed: () =>
                                launch('https://github.com/Donfreddy'),
                          ),
                          const Text('Github')
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.twitter,
                              color: brownText,
                            ),
                            onPressed: () =>
                                launch('https://twitter.com/DonFreddy2'),
                          ),
                          const Text('Twitter')
                        ],
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          IconButton(
                            icon: FaIcon(
                              FontAwesomeIcons.linkedin,
                              color: brownText,
                            ),
                            onPressed: () => launch(
                                'https://www.linkedin.com/in/don-freddy-237ba4193/'),
                          ),
                          const Text('Linkedin')
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          );
        } else {
          return const SizedBox.shrink();
        }
      },
    );
  }
}
