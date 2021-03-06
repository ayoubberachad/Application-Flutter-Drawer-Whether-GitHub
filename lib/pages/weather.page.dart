import 'package:flutter/material.dart';
import 'package:flutter_app/pages/weather-details.page.dart';
import 'weather-details.page.dart';

class WeatherForm extends StatefulWidget {
  @override
  _WeatherFormState createState() => _WeatherFormState();
}

class _WeatherFormState extends State<WeatherForm> {
  String city = "";
  TextEditingController cityEditingController = new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${city}'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: <Widget>[
          Container(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextField(
                decoration: InputDecoration(hintText: 'Tape a City..'),
                controller: cityEditingController,
                onChanged: (String str) {
                  setState(() {
                    city = str;
                  });
                },
                onSubmitted: (String str) {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => WeatherDetails(city)));
                  cityEditingController.text = "";
                },
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: EdgeInsets.all(10),
            // ignore: deprecated_member_use
            child: RaisedButton(
              child: Text('Get Weather'),
              textColor: Colors.white,
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => WeatherDetails(city)));
                cityEditingController.text;
              },
              color: Colors.green,
            ),
          )
        ],
      ),
    );
  }
}
