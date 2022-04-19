// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers, prefer_final_fields

import 'package:corner/constants/colors.dart';
import 'package:corner/constants/fonts.dart';
import 'package:corner/constants/padding.dart';
import 'package:corner/screens/home_screen.dart';
import 'package:corner/screens/register_screen.dart';
import 'package:corner/widgets/custom_title.dart';
import 'package:corner/widgets/navigator.dart';
import 'package:corner/widgets/sized_box.dart';
import 'package:corner/widgets/text_fields/custom_text_field.dart';
import 'package:corner/widgets/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

class LogInScreen extends StatefulWidget {
  // LogInScreen();

  @override
  _LogInScreenState createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  CustomNavigator _navigator = CustomNavigator();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Row(
        children: [
          ///logo
          Expanded(
            child: Column(
              children: [
                Image.asset('assets/images/corner_logo.png'),
              ],
            ),
          ),
          ///login block
          Expanded(
            child: Column(
              children: [
                Container(
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height,
                  decoration: BoxDecoration(
                    color: kPrimaryColor,
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(35.0),
                      topLeft: Radius.circular(35.0),
                    ),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(kPadding25),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        ///title
                        CustomTitleWidget('تسجل دخول'),
                        ///username
                        Row(
                          children: [
                            ///text field
                            Expanded(
                              flex: 4,
                              child: CustomTextFieldWidget(_usernameController,Icons.keyboard),
                            ),
                            CustomSizedBoxWidget(0.0, 15.0),
                            ///title
                            Expanded(
                              flex: 1,
                              child: Text(
                                'البريد الالكتروني',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: kFont16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ///password
                        Row(
                          children: [
                            ///text field
                            Expanded(
                                flex: 4,
                                child: CustomPasswordTextFieldWidget(_passwordController,Icons.lock)),
                            CustomSizedBoxWidget(0.0, 15.0),
                            ///title
                            Expanded(
                              flex: 1,
                              child: Text(
                                'كلمة المرور',
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                  color: kWhiteColor,
                                  fontSize: kFont16,
                                ),
                              ),
                            ),
                          ],
                        ),
                        ///button ,line and register
                        Column(
                          children: [
                            ///button
                            Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                                color: kSecondaryColor,
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: EdgeInsets.all(kPadding5),
                                child: MaterialButton(
                                  onPressed: (){
                                    _navigator.navigateWithNavigator(context, HomeScreen());
                                  },
                                  child: Text(
                                    'تسجيل',
                                    style: TextStyle(
                                      color: kWhiteColor,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            CustomSizedBoxWidget(25.0, 0.0),
                            ///line
                            Container(
                              height: MediaQuery.of(context).size.height*0.004,
                              width: MediaQuery.of(context).size.width*0.07,
                              color: kWhiteColor,
                            ),
                            CustomSizedBoxWidget(25.0, 0.0),
                            ///register
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                ///button
                                InkWell(
                                  onTap: (){
                                   _navigator.navigateWithNavigator(context, RegisterScreen());
                                  },
                                  child: Text(
                                    'هنا',
                                    style: TextStyle(
                                      color: kBlueColor,
                                    ),
                                  ),
                                ),
                                ///text title
                                Text(
                                  'او يمكنك تسجيل حساب جديد من ',
                                  style: TextStyle(
                                      color: kWhiteColor
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
