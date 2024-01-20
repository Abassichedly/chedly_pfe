import 'package:flutter/material.dart';
import 'package:chedly_pfe3/services/world_time.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Loading  extends StatefulWidget {


  @override
  State<Loading > createState() => _LoadingState();
}

class _LoadingState extends State<Loading >  {
 // String time='loading';
  void setupWorldTime() async
  {
    WorldTime t = WorldTime(location: 'Berlin', flag: 'germany.png', url: 'Europe/Berlin', time: '');
    await t.getTime();
    Navigator.pushReplacementNamed(context,'/home',arguments: {
      'location':t.location,
      'flag':t.flag,
      'time':t.time,
    });
    /*print(t.time);
    setState(() {
      time=t.time;
    });*/
  }

  @override
  void initState() {
    super.initState();
    setupWorldTime();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body:Center(
        child:SpinKitSpinningLines(
          color:Colors.white,
          size: 400,
        ),
      ),
    );
  }
}
