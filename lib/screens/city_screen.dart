import 'package:flutter/material.dart';
import 'package:clima_weather_app/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                  ),
                ),
              ),
              Container(
                  padding: EdgeInsets.all(20.0),
                  child: TextField(
                    onChanged: (value) {
                      setState(() {
                        cityName = value;
                      });
                    },
                    decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide.none),
                        prefixIcon: Icon(
                          Icons.location_city,
                          color: Colors.blue,
                          size: 35,
                        ),
                        filled: true,
                        fillColor: Colors.white,
                        hintText: 'Enter City Name',
                        hintStyle: TextStyle(color: Colors.grey)),
                    style: TextStyle(
                      color: Colors.black,
                    ),
                  )),
              TextButton(
                onPressed: () {
                  Navigator.pop(context, cityName);
                },
                child: Text(
                  'Get Weather',
                  style: kButtonTextStyle,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
