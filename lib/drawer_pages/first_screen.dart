import 'package:flurry_drawer/flurry_drawer/flurry_navigation.dart';
import 'package:flutter/material.dart';

final Screen firstscreen = new Screen(
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
                        child: new Text('Welcome to your home')
                    )
                )
              ],
            ),
          ),
        ),

      );
    }
);