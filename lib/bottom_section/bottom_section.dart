
import 'package:flurry_drawer/bottom_section/slider_button/slider.dart';
import 'package:flurry_drawer/drawer_pages/first_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'hint_circle.dart';
import 'or_widget.dart';

class BottomSection extends StatefulWidget {
  @override
  _BottomSectionState createState() => _BottomSectionState();
}

class _BottomSectionState extends State<BottomSection> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
/*------------------------------------------------------------------------------------------------------*/
/*---------------------------------------------  OR Widget  --------------------------------------------*/
/*------------------------------------------------------------------------------------------------------*/
        OrWidget(),
        SizedBox(
          height: 5,
        ),
/*------------------------------------------------------------------------------------------------------*/
/*----------------------------------------  logout slider button  ---------------------------------------*/
/*------------------------------------------------------------------------------------------------------*/
        Center(child: SliderButton(
            action: () {
              ///Do something here
            },
            label: Text(
              "   Slide to logout",
              style: TextStyle(
                  color: Color(0xff4a4a4a),
                  fontWeight: FontWeight.w500,
                  fontSize: 17),
            ),
            icon: Icon(Icons.logout, color: Theme
                .of(context)
                .accentColor,)

        )),

/*------------------------------------------------------------------------------------------------------*/
/*---------------------------------------------  hint circle  --------------------------------------------*/
/*------------------------------------------------------------------------------------------------------*/
        HintCircle(),
      ],
    );
  }
}
