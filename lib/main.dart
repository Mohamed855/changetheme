import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(_App());
}

class _App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _AppState();
  }
}

class _AppState extends State {
  var themeColor = Colors.black,
      themeFontColor = Colors.white,
      btnFontSize = 25.0,
      padding = EdgeInsets.all(30);

  SizedBox sizedBxV(size) {
    return SizedBox(
      height: size,
    );
  }

  SizedBox sizedBxH(size) {
    return SizedBox(
      width: size,
    );
  }

  FlatButton btn(bgColor, fontColor) {
    return FlatButton(
      color: bgColor,
      textColor: fontColor,
      padding: padding,
      onPressed: () => setState(() {
        themeColor = bgColor;
        themeFontColor = fontColor;
      }),
      child: Text(
        'Apply',
        style: TextStyle(
          fontSize: btnFontSize,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: themeColor,
          centerTitle: true,
          title: Text(
            'Change Theme',
            style: TextStyle(fontSize: 25, color: themeFontColor),
          ),
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                sizedBxV(20.0),
                Row(
                  children: [
                    sizedBxH(20.0),
                    btn(Color(0xffcfcfcf), Colors.black54),
                    sizedBxH(20.0),
                    btn(Colors.amber, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.blue, Colors.white),
                  ],
                ),
                sizedBxV(20.0),
                Row(
                  children: [
                    sizedBxH(20.0),
                    btn(Colors.black54, Color(0xffcfcfcf)),
                    sizedBxH(20.0),
                    btn(Colors.purple, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.cyan, Colors.white),
                  ],
                ),
                sizedBxV(20.0),
                Row(
                  children: [
                    sizedBxH(20.0),
                    btn(Colors.deepOrange, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.blueGrey, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.greenAccent, Colors.black54)
                  ],
                ),
                sizedBxV(20.0),
                Row(
                  children: [
                    sizedBxH(20.0),
                    btn(Colors.brown, Colors.amber[100]),
                    sizedBxH(20.0),
                    btn(Colors.indigo, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.deepPurpleAccent, Colors.white)
                  ],
                ),
                sizedBxV(20.0),
                Row(
                  children: [
                    sizedBxH(20.0),
                    btn(Colors.lime, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.pinkAccent, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.teal, Colors.white)
                  ],
                ),
                sizedBxV(20.0),
                Row(
                  children: [
                    sizedBxH(20.0),
                    btn(Colors.grey, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.redAccent, Colors.white),
                    sizedBxH(20.0),
                    btn(Colors.black87, Colors.white)
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
