import 'package:dating_app/commons/rounded_image.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        RoundedImage(
          imagePath: "assets/images/anne.jpeg",
          size: Size.fromWidth(120.0),
        ),
        SizedBox(
          height: 10.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Ester Valentina",
              style: whiteNameTextStyle,
            ),
            Text(
              ", 24",
              style: whiteNameTextStyle,
            )
          ],
        ),
        SizedBox(
          height: 10.0,
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
