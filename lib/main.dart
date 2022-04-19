// ignore_for_file: prefer_const_constructors

import 'package:corner/constants/colors.dart';
import 'package:corner/screens/log_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Corner',
      // theme: ThemeData(
      //   primarySwatch: kPrimaryColor,
      // ),
      debugShowCheckedModeBanner: false,
      home: LogInScreen(),
    );
  }
}


