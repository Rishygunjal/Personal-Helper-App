import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';

class WorldWeather {

  String location; // location name for UI
  var weather; // the time in that location
  String flag; // url to an asset flag icon
  String url; // location url for api endpoint
  bool isDaytime; // true or false if daytime or not

  WorldWeather({ this.location, this.flag, this.url });

  Future<void> getTime() async {

    try{
      // make the request
      Response response = await get('http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=5433b8a405a494bedf1378b3037e7c35');
      print(response.body);



      Map data = jsonDecode(response.body);
      print(data);
      // get properties from json
      Map a = data['main'];
      print(a['temp']);
      var c = a['temp'];

      weather = a['temp'].toString();





      // create DateTime object


      // set the time property


    }
    catch (e) {
      print(e);
      weather = 'could not get weather';
    }

  }

}