import 'dart:convert';
import 'package:dating_app/styleguide/text_style.dart';
import 'package:dating_app/viewModels/PointViewModel.dart';
import 'package:dating_app/viewModels/PointsViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PointsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PointsViewModel>>(
      future: fetchPointsV2(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PointsViewModel> data = snapshot.data;
          return _jobsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  ListView _jobsListView(data) {
    return ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          String x = (data[index].toString() + " - " + data[index].Latitude);
          return Card(
            elevation: 2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: ListTile(
              title: Text(
                data[index].Latitude,
                style: titleStyle,
              ),
              subtitle: Row(
                children: <Widget>[
                  Image.asset(
                    "assets/icons/location_pin.png",
                    width: 15,
                    height: 15,
                    color: Colors.black,
                  ),
                  Text(
                    "34 kilometers",
                    style: whiteSubHeadingTextStyle.copyWith(
                        color: Colors.black, fontSize: 14),
                  )
                ],
              ),
              leading: ClipOval(
                child: Image.asset(
                  "assets/images/anne.jpeg",
                  width: 50,
                  height: 50,
                ),
              ),
              trailing: SizedBox(
                width: 75,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Expanded(
                        child: Row(
                      children: <Widget>[
                        Container(
                          width: 15,
                          height: 15,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        ),
                        Spacer(),
                        Text(
                          "ONLINE",
                          style: whiteSubHeadingTextStyle.copyWith(
                              color: Colors.green, fontSize: 14),
                        )
                      ],
                    )),
                    Expanded(
                        child: Icon(
                      Icons.star,
                      color: Colors.amber,
                    ))
                  ],
                ),
              ),
            ),
          );
        });
  }

  List<PointViewModel> parsePoints(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<PointViewModel>((json) => PointViewModel.fromJson(json)).toList();
  }

  Future<List<PointViewModel>> fetchPoints() async {
    final response =
        await http.get('http://192.168.1.75:8091/Point/GetAllPoints');
    if (response.statusCode == 200) {
      return parsePoints(response.body);
    } else {
      throw Exception('Unable to fetch points from the REST API');
    }
  }

  Future<List<PointsViewModel>> fetchPointsV2() async {
    final jobsListAPIUrl = 'http://192.168.1.75:8091/Point/GetAllPoints';
    final response = await http.get(jobsListAPIUrl);

    if (response.statusCode == 200) {
      List jsonResponse = json.decode(response.body);
      return jsonResponse.map((job) => new PointsViewModel.fromJson(job)).toList();
    } else {
      throw Exception('Failed to load jobs from API');
    }
  }
}
