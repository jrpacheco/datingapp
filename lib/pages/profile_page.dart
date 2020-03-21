import 'package:dating_app/commons/my_info.dart';
import 'package:dating_app/commons/opaque_image.dart';
import 'package:dating_app/commons/profile_info_big_card.dart';
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
                  flex: 5,
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
                  color: Colors.white,
                  child: Table(
                    children: [
                      TableRow(children: [
                        ProfileInfoBigCard(
                          firstText: "13",
                          secondText: "New matchers",
                          icon: Icon(
                            Icons.star,
                            size: 30,
                            color: blueColor,
                          ),
                        ),
                        ProfileInfoBigCard(
                            firstText: "1",
                            secondText: "Unmatched me",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ))
                      ]),
                      TableRow(children: [
                        ProfileInfoBigCard(
                          firstText: "13",
                          secondText: "New matchers",
                          icon: Icon(
                            Icons.star,
                            size: 30,
                            color: blueColor,
                          ),
                        ),
                        ProfileInfoBigCard(
                            firstText: "1",
                            secondText: "Unmatched me",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ))
                      ]),
                      TableRow(children: [
                        ProfileInfoBigCard(
                          firstText: "13",
                          secondText: "New matchers",
                          icon: Icon(
                            Icons.star,
                            size: 30,
                            color: blueColor,
                          ),
                        ),
                        ProfileInfoBigCard(
                            firstText: "1",
                            secondText: "Unmatched me",
                            icon: Image.asset(
                              "assets/icons/sad_smiley.png",
                              width: 32,
                              color: blueColor,
                            ))
                      ])
                    ],
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
