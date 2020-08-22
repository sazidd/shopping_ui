import 'package:faysal_vai_project/constants.dart';
import 'package:faysal_vai_project/screens/home/home_screen.dart';
import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      
        textTheme: Theme.of(context).textTheme.apply(bodyColor:  kTextColor)
      ),
      home: HomeScreen(),
      
    );
  }
}