// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:corner/constants/colors.dart';
import 'package:corner/constants/padding.dart';
import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatefulWidget {
  CustomTextFieldWidget(this.controller,this.icon);
  var controller,icon;
  @override
  _CustomTextFieldWidgetState createState() => _CustomTextFieldWidgetState();
}

class _CustomTextFieldWidgetState extends State<CustomTextFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8.0),
          color: kWhiteColor
      ),
      child: Padding(
        padding: EdgeInsets.only(left: kPadding10,right: kPadding10),
        child: Row(
          children: [
            ///text field
            Expanded(
              child: TextField(
                textDirection: TextDirection.rtl,
                style: TextStyle(
                    color: kPrimaryColor
                ),
                controller: widget.controller,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintTextDirection: TextDirection.rtl,
                  // icon: IconButton(
                  //   onPressed: (){},
                  //   icon: Icon(Icons.person,color: kPrimaryColor,),
                  // ),
                ),
              ),
            ),
            ///icon
            Icon(widget.icon,color: kPrimaryColor),
          ],
        ),
      ),
    );
  }
}
