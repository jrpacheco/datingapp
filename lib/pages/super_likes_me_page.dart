import 'package:dating_app/styleguide/colors.dart';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';

class SuperLikesMePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text("Super Liked Me",
                style: headingTextStyle.copyWith(color: Colors.black)),
          ),
          Card(
            elevation: 4,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search",
                    hintStyle: whiteSubHeadingTextStyle.copyWith(
                        color: hintTextColor)),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: <Widget>[
                Text(
                  "Super Likes",
                  style: subTitleStyle.copyWith(color: Colors.black),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                    width: 25,
                    height: 25,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: primaryColor),
                    child: Center(
                      child: Text(
                        "5",
                        style: subTitleStyle.copyWith(color: Colors.white),
                      ),
                    ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
