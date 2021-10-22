import 'package:flutter/material.dart';

import 'drawer_pages/fifth_screen.dart';
import 'drawer_pages/first_screen.dart';
import 'drawer_pages/fourth_screen.dart';
import 'drawer_pages/second_screen.dart';
import 'drawer_pages/third_screen.dart';
import 'flurry_drawer/flurry_menu.dart';
import 'flurry_drawer/flurry_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}


class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => new _MyHomePageState();
}
class _MyHomePageState extends State<MyHomePage> {
  //Decalre active screen var with the the default screen somewhere accesible to the contentScreen attributes
  var activeScreen = firstscreen;
  Widget build(BuildContext context) {
    return new FlurryNavigation(
      // The curve of the screen (Double)
      curveRadius: (MediaQuery.of(context).size.width *
          MediaQuery.of(context).size.height) /
          4980,
      // The Icon data of the icon the BottomLeft
      expandIcon: Image.asset("assets/expan1.png"),
      // The size of the icon on the BottomLeft
      iconSize: ((MediaQuery.of(context).size.width *
          MediaQuery.of(context).size.height) /
          15420),
      // The content of the screen
      contentScreen: activeScreen,
      menuScreen: new MenuScreen(
        bgColor: Color.fromRGBO(121, 134, 203, 1),
        menu: new Menu(
          items: [
            new MenuItem(
                id:
                'hom', //You can set this to whatever you want but dont duplicate it
                icon:
                'assets/hom.png', //Set this to the data for the icon of the button
                isSelected: true,
                selectedBtnColor: Color.fromRGBO(38, 198, 218, 1),
               // btnShape: BoxShape.rectangle
            ),
            new MenuItem(
                id: 'sta',
                icon: 'assets/sta.png',
                isSelected: false,
                selectedBtnColor: Color.fromRGBO(38, 198, 218, 1),
                //btnShape: BoxShape.rectangle
            ),
            new MenuItem(
              id: 'doc',
              icon: 'assets/doc.png',
              isSelected: false,
              selectedBtnColor: Color.fromRGBO(38, 198, 218, 1),
            ),
            new MenuItem(
              id: 'set',
              icon: 'assets/set.png',
              isSelected: false,
              selectedBtnColor: Color.fromRGBO(38, 198, 218, 1),
            ),
          ],
        ),
        onMenuItemSelected: (String itemId) {
          if (itemId == 'hom') {
            setState(() => activeScreen = firstscreen);
          } else if (itemId == 'sta') {
            setState(() => activeScreen = secondscreen);
          } else if (itemId == 'doc') {
            setState(() => activeScreen = thirdscreen);
          } else if (itemId == 'loc') {
            setState(() => activeScreen = fourthscreen);
          } else if (itemId == 'set') {
            setState(() => activeScreen = fifthscreen);
          }
        },
      ),
    );
  }
}
