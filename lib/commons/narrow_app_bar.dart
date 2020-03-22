import 'package:flutter/material.dart';

class NarrowAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16.0, bottom: 16.0),
        child: Row(
          children: <Widget>[],
        ),
      ),
    );
  }
}
