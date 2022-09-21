import 'package:flutter/material.dart';

import 'data/weatherdata.dart';

void main() {
  runApp(const MyApp());
}

const String apiEndpoint = "https://data.edmonton.ca/resource/s4ws-tdws.json";

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const WeatherDataListViewWidget(),
    );
  }
}

class WeatherDataListViewWidget extends StatefulWidget {
  const WeatherDataListViewWidget({Key? key}) : super(key: key);

  @override
  _WeatherDataListWidget createState() {
    return _WeatherDataListWidget();
  }
}

class _WeatherDataListWidget extends State<WeatherDataListViewWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: const Text('ListTile selection')),
      body: const Center(child: CircularProgressIndicator()),
    );
  }
}

class WeatherDataDetailViewWidget extends StatefulWidget {
  final WeatherData data;

  const WeatherDataDetailViewWidget({Key? key, required this.data}) : super(key: key);

  @override
  _WeatherDataDetailWidget createState() {
    return _WeatherDataDetailWidget();
  }
}

class _WeatherDataDetailWidget extends State<WeatherDataDetailViewWidget> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(child: CircularProgressIndicator());
  }
}
