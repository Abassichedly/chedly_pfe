import 'package:http/http.dart';
import 'dart:convert';
import 'package:intl/intl.dart';


class WorldTime
{
  String location;//loc name
  String time;
  String flag;//flag icon
  String url;//loc url api endpoint
  bool? isDaytime;
  WorldTime({required this.location,required this.flag,required this.url,required this.time});
  Future <void> getTime() async
  {
    try
    {
      Response res = await get(
          Uri.parse("https://worldtimeapi.org/api/timezone/$url"));
      Map map = jsonDecode(res.body);
      //print(map);
      //get propety from data
      String datetime = map['utc_datetime'];
      String offset = map['utc_offset'].substring(1, 3);
      /*print(datetime);
    print( offset);*/
      DateTime now = DateTime.parse(datetime);
      now = now.add(Duration(hours: int.parse(offset)));
      //set time propety
      time = DateFormat.jm().format(now);
      isDaytime = now.hour >= 6 && now.hour <= 20 ? true : false;
    }
    catch(e)
    {
      print('caught error $e');
      time='could not get time data';
    }

  }
}