import 'package:dating_app/commons/my_info.dart';
import 'package:dating_app/commons/opaque_image.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
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
                      ),
                      SafeArea(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "My Profile",
                                textAlign: TextAlign.left,
                                style: headingTextStyle,
                              ),
                            ),
                            MyInfo()
                          ],
                        ),
                      ))
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
