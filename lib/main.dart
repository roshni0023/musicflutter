import 'package:flutter/material.dart';
import 'package:musicflutter/screens/homeScreens.dart';
import 'package:musicflutter/screens/songScreen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      routes: {
        'songs': (context)=> SongScreen(),
      },
    );
  }
}