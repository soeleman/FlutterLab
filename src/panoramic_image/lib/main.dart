import 'package:flutter/material.dart';
import 'package:panorama/panorama.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Panorama',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Panorama(
        child: Image.asset('assets/images/pan.jpeg')
      )
    );
  }
}