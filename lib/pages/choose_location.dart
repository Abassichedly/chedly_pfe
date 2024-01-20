import 'package:flutter/material.dart';


class ChooseLocation extends StatefulWidget {
  const ChooseLocation({super.key});

  @override
  State<ChooseLocation> createState() => _ChooseLocationState();
}

class _ChooseLocationState extends State<ChooseLocation>{
  int i=0;

  @override
  Widget build(BuildContext context) {
    print("Build function ran");
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('Choose a Location'),
        elevation: 0,
      ),
       body:ElevatedButton(
        onPressed:(){
          setState(() {
            i+=1;
          });
        } ,
         child:Text("counter is $i"),
      ),
    );
  }
}
