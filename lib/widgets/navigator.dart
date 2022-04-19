import 'package:flutter/material.dart';

class CustomNavigator{
  navigateWithNavigator(context,screen){
    Navigator.push(context, MaterialPageRoute(
      builder: (context)=>screen,
    ));
  }
}