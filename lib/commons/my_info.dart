import 'package:dating_app/commons/radial_progress.dart';
import 'package:dating_app/commons/rounded_image.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(      
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RadialProgress(
            width: 4,
            goalCompleted: 0.9,
            child: RoundedImage(
              imagePath: "assets/images/profile.jpeg",
              size: Size.fromWidth(90.0),
            )),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "XXX",
              style: whiteNameTextStyle,
            ),
            Text(
              ", 32",
              style: whiteNameTextStyle,
            )
          ],
        ),
        SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              "assets/icons/location_pin.png",
              width: 20.0,
              color: Colors.white,
            ),
            Text(
              " 32 kilometers",
              style: whiteSubHeadingTextStyle,
            )
          ],
        )
      ]),
    );
  }
}
