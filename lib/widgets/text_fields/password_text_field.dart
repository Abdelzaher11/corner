// ignore_for_file: use_key_in_widget_constructors

import 'package:corner/constants/colors.dart';
import 'package:corner/constants/padding.dart';
import 'package:flutter/material.dart';

class CustomPasswordTextFieldWidget extends StatefulWidget {
  CustomPasswordTextFieldWidget(this.controller,this.icon);
  var controller,icon;
  @override
  _CustomPasswordTextFieldWidgetState createState() => _CustomPasswordTextFieldWidgetState();
}

class _CustomPasswordTextFieldWidgetState extends State<CustomPasswordTextFieldWidget> {
  bool visibility = false;
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
                obscuringCharacter: '*',
                obscureText: visibility == false ?true:false,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintTextDirection: TextDirection.rtl,
                  icon: IconButton(
                    onPressed: (){
                      setState(() {
                        if(visibility == false){
                          visibility = true;
                        }
                        else if(visibility == true){
                          visibility = false;
                        }
                      });
                    },
                    icon: Icon(visibility == false?Icons.visibility_off:Icons.visibility,color: kPrimaryColor,),
                  ),
                ),
              ),
            ),
            ///icon
            Icon(widget.icon,color: kPrimaryColor),
          ],
        ),
      ),
    )
    ;
  }
}
