// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';

class CustomSizedBoxWidget extends StatefulWidget {
  CustomSizedBoxWidget(this.height,this.width);
  double height,width;
  @override
  _CustomSizedBoxWidgetState createState() => _CustomSizedBoxWidgetState();
}

class _CustomSizedBoxWidgetState extends State<CustomSizedBoxWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: widget.height,
      width: widget.width,
    );
  }
}
