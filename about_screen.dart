import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  State<AboutScreen> createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Image.asset(
              'assets/images/Rahy-logo.png',
              scale: 6,
            ),
            Column(
              children: <Widget>[
                Image.asset(
                  'assets/images/about.jpg',
                  scale: 1,
                ),
              ],
            ),
            Column(
              children: <Widget>[Text('Made It Simple')],
            ),
            Column(
              children: <Widget>[
                Text(
                    'Book services instantly through YARAVE mobile App and avoid the back-and-forth phone calls during business h.')
              ],
            ),
          ],
        ),
      ),
    );
  }
}
