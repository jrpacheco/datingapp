import 'dart:convert';
import 'package:dating_app/viewModels/PointViewModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class PointsListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PointViewModel>>(
      future: fetchPoints(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<PointViewModel> data = snapshot.data;
          //return _jobsListView(data);
        } else if (snapshot.hasError) {
          return Text("${snapshot.error}");
        }
        return CircularProgressIndicator();
      },
    );
  }

  List<PointViewModel> parsePoints(String responseBody) {
    final parsed = json.decode(responseBody).cast<Map<String, dynamic>>();
    return parsed.map<PointViewModel>((json) => PointViewModel.fromJson(json))
        .toList();
  }

  Future<List<PointViewModel>> fetchPoints() async {
    final response = await http.get(
        'http://192.168.1.75:8091/Point/GetAllPoints');
    if (response.statusCode == 200) {
      return parsePoints(response.body);
    } else {
      throw Exception('Unable to fetch points from the REST API');
    }
  }

  Future<PointViewModel> fetchPointsV2() async {
    final response =
    await http.get('http://192.168.1.75:8091/Point/GetAllPoints');

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      return PointViewModel.fromJson(json.decode(response.body));
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load points');
    }
  }
}