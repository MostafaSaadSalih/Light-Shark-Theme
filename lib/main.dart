import '../screen/front%20screen.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(challenge_2());
}
Color w = Colors.white;
Color b = Colors.black;
Color g = Colors.grey;
Color br = Colors.brown;
Color bl = Colors.blue;
Color r = Colors.red;
Color Gray= Color(0xff586878);
Color bannerColor=Color(0xffECECEC);
Color bodyColor = w;
Color GreenColor=Color(0xff24bc47);

class challenge_2 extends StatefulWidget {
  @override
  _challenge_2State createState() => _challenge_2State();
}


class _challenge_2State extends State<challenge_2> {




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainScreen(),

    );
  }
}
