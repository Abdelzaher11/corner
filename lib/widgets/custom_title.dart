import 'package:corner/constants/colors.dart';
import 'package:corner/constants/fonts.dart';
import 'package:flutter/material.dart';

class CustomTitleWidget extends StatefulWidget {
  CustomTitleWidget(this.title);
  var title;
  @override
  _CustomTitleWidgetState createState() => _CustomTitleWidgetState();
}

class _CustomTitleWidgetState extends State<CustomTitleWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      '${widget.title}',
      style: TextStyle(
          fontSize: kFont25,
          color: kWhiteColor
      ),
    );
  }
}
