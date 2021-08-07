import 'package:flutter/material.dart';
import 'package:world_time_app/services/world_time.dart';

class ChooseLocation extends StatefulWidget {
  @override
  _ChooseLocationState createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation> {

  // List<WorldTime> locations = [
  //   WorldTime(url: 'Europe/London', location: 'London', flag: 'uk.png'),
  //   WorldTime(url: 'Europe/Berlin', location: 'Athens', flag: 'greece.png'),
  //   WorldTime(url: 'Africa/Cairo', location: 'Cairo', flag: 'egypt.png'),
  //   WorldTime(url: 'Africa/Nairobi', location: 'Nairobi', flag: 'kenya.png'),
  //   WorldTime(url: 'America/Chicago', location: 'Chicago', flag: 'usa.png'),
  //   WorldTime(url: 'America/New_York', location: 'New York', flag: 'usa.png'),
  //   WorldTime(url: 'Asia/Seoul', location: 'Seoul', flag: 'south_korea.png'),
  //   WorldTime(url: 'Asia/Jakarta', location: 'Jakarta', flag: 'indonesia.png'),
  // ];

  void updateTime(index) async {
    WorldWeather instance = locations[index];
    await instance.getTime();
    Navigator.pop(context, {
      'location': instance.location,
      'weather': instance.weather,
      'flag': instance.flag,

    });
  }
  

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Choose a Location'),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView.builder(
        itemCount: locations.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 1.0, horizontal: 4.0),
            child: Card(
              child: ListTile(
                onTap: () {
                  updateTime(index);
                },
                title: Text(locations[index].location),
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/${locations[index].flag}'),
                ),
              ),
            ),
          );
        }
      ),
    );
  }
}

class DataSearch extends SearchDelegate<String>{
  @override
  List<Widget> buildActions(BuildContext context) {
    return[
      IconButton(icon: Icon(Icons.clear), onPressed: () {})
    ];
    throw UnimplementedError();
  }

  @override
  Widget buildLeading(BuildContext context) {
    // TODO: implement buildLeading
    throw UnimplementedError();
  }

  @override
  Widget buildResults(BuildContext context) {
    // TODO: implement buildResults
    throw UnimplementedError();
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
    ? rec
    throw UnimplementedError();
  }

}