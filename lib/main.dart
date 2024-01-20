import 'package:chedly_pfe3/pages/choose_location.dart';
import 'package:flutter/material.dart';
import 'package:chedly_pfe3/pages/home.dart';
import 'package:chedly_pfe3/pages/loading.dart';

void main() {
  runApp(MaterialApp(
      initialRoute: '/',
      routes:{
        '/': (context)=>Loading(),
        '/home': (context)=>Home(),
        '/location': (context)=>ChooseLocation(),
    }
  ));
}
