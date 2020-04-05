import 'package:dating_app/styleguide/text_style.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

class PositionBuilder extends StatelessWidget {
  final BuildContext context;
  final Future<Position> location;

  const PositionBuilder(
      {Key key, @required this.context, @required this.location})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Position>(
      future: location, // a previously-obtained Future<String> or null
      builder: (BuildContext context, AsyncSnapshot<Position> snapshot) {
        List<Widget> children;

        if (snapshot.hasData) {
          children = <Widget>[
            Image.asset(
              "assets/icons/location_pin.png",
              width: 20.0,
              color: Colors.white,
            ),
            Text(
              " ${snapshot.data}",
              style: whiteSubHeadingTextStyle,
            )
          ];
        } else if (snapshot.hasError) {
          children = <Widget>[
            /*Icon(
              Icons.error_outline,
              color: Colors.red,
              size: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16),
              child: Text('Error: ${snapshot.error}'),
            )*/
          ];
        } else {
          children = <Widget>[
            SizedBox(
              child: CircularProgressIndicator(),
              width: 20,
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(top: 16),
              child: Text('Awaiting result...'),
            )
          ];
        }
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: children,
          ),
        );
      },
    );
  }
}
