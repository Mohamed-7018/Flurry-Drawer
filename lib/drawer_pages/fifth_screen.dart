import 'package:flurry_drawer/flurry_drawer/flurry_navigation.dart';
import 'package:flutter/material.dart';

final Screen fifthscreen = new Screen(
    contentBuilder: (BuildContext context) {
      return new Center(
        child: new Container(
          height:100.0,
          child: new Padding(
            padding: const EdgeInsets.all(25.0),
            child: new Column(
              children: [
                new Expanded(
                    child: new Center(
                        child: new Text('If you wanna tweak anything in the app this is your place')
                    )
                )
              ],
            ),
          ),
        ),

      );
    }
);