import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Map map={};
  @override
  Widget build(BuildContext context) {
      map= ModalRoute.of(context)!.settings.arguments as Map;
      print(map);
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0,120,0,0),
            child: Column(
              children:<Widget> [
                TextButton.icon(
                    onPressed: (){
                      Navigator.pushNamed(context,'/location');
                    },
                    label:Text("Edit location") ,
                  icon:Icon(Icons.edit_location),
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      map['location'],
                      style:TextStyle(
                        fontSize: 28,
                        letterSpacing: 2.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Text(
                  map['time'],
                  style:TextStyle(
                    fontSize: 66,
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

