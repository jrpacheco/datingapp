import 'package:dating_app/commons/opaque_Image.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Expanded(
                  flex: 4,
                  child: Stack(
                    children: <Widget>[
                      OpaqueImage(
                        imageUrl: 'assets/images/anne.jpeg',
                      )
                    ],
                  )),
              Expanded(
                flex: 5,
                child: Container(
                  color: secondaryTextColor,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
