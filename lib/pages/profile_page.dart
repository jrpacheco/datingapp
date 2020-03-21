import 'package:dating_app/commons/my_info.dart';
import 'package:dating_app/commons/opaque_image.dart';
import 'package:dating_app/commons/profile_info_big_card.dart';
import 'package:dating_app/commons/profile_info_card.dart';
import 'package:dating_app/pages/super_likes_me_page.dart';
import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

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
                        imageUrl: 'assets/images/profile.jpeg',
                      ),
                      SafeArea(
                          child: Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          children: <Widget>[
                            Container(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  "My Profile",
                                  textAlign: TextAlign.left,
                                  style: headingTextStyle,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[MyInfo()],
                            )
                          ],
                        ),
                      ))
                    ],
                  )),
              Expanded(
                flex: 5,
                child: ListView(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(top: 20),
                      color: Colors.white,
                      child: Table(
                        children: [
                          TableRow(children: [
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => SuperLikesMePage()));
                              },
                              child: ProfileInfoBigCard(
                                firstText: "13",
                                secondText: "New matchers",
                                icon: Icon(
                                  Icons.star,
                                  size: 30,
                                  color: blueColor,
                                ),
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
                              firstText: "264",
                              secondText: "All matches",
                              icon: Image.asset(
                                "assets/icons/checklist.png",
                                width: 32,
                                color: blueColor,
                              ),
                            ),
                            ProfileInfoBigCard(
                                firstText: "42",
                                secondText: "Rematches",
                                icon: Icon(
                                  Icons.refresh,
                                  size: 32,
                                  color: blueColor,
                                ))
                          ]),
                          TableRow(children: [
                            ProfileInfoBigCard(
                              firstText: "404",
                              secondText: "Profile Visitors",
                              icon: Icon(
                                Icons.remove_red_eye,
                                size: 32,
                                color: blueColor,
                              ),
                            ),
                            ProfileInfoBigCard(
                                firstText: "42",
                                secondText: "Super likes",
                                icon: Icon(
                                  Icons.favorite,
                                  size: 32,
                                  color: blueColor,
                                ))
                          ])
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Positioned(
              top: screenHeight * (4 / 9) - 80 / 2,
              left: 16,
              right: 16,
              child: Container(
                height: 80,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    ProfileInfoCard(
                      firstText: "54%",
                      secondText: "Progress",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfileInfoCard(
                      hasImage: true,
                      imagePath: "assets/icons/pulse.png",
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    ProfileInfoCard(
                      firstText: "152",
                      secondText: "Level",
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
