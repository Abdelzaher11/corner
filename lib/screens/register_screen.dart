// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_field, prefer_typing_uninitialized_variables, use_key_in_widget_constructors

import 'package:corner/constants/colors.dart';
import 'package:corner/constants/fonts.dart';
import 'package:corner/constants/padding.dart';
import 'package:corner/widgets/sized_box.dart';
import 'package:corner/widgets/text_fields/custom_text_field.dart';
import 'package:corner/widgets/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatefulWidget {
  // RegisterScreen();

  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _confirmPasswordController = TextEditingController();
  var _employeeSelect;
  List _employeeList = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Row(
        children: [
          ///logo
          Expanded(
            flex: 1,
            child: Column(
              children: [Image.asset('assets/images/corner_logo.png')],
            ),
          ),
          ///content
          Expanded(
            flex: 4,
            child: Container(
              clipBehavior: Clip.antiAliasWithSaveLayer,
              decoration: BoxDecoration(
                color: kPrimaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(50.0),
                  topLeft: Radius.circular(35.0),
                ),
              ),
              child: Row(
                children: [
                  ///pick image and register
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: kPrimaryColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(50.0),
                          topLeft: Radius.circular(35.0),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ///image
                          InkWell(
                            onTap:(){},
                            child: Container(
                              clipBehavior: Clip.antiAliasWithSaveLayer,
                              height:
                                  MediaQuery.of(context).size.height * 0.25,
                              width:
                                  MediaQuery.of(context).size.width * 0.15,
                              decoration: BoxDecoration(
                                color: kWhiteColor,
                                borderRadius: BorderRadius.circular(25.0),
                              ),
                            ),
                          ),
                          ///drop down
                          Padding(
                            padding: EdgeInsets.all(kPadding10),
                            child: Row(
                              children: [
                                ///dropdown
                                Expanded(
                                  flex: 4,
                                  child: Container(
                                    width: double.infinity,
                                    height: MediaQuery.of(context).size.height*0.06,
                                    clipBehavior: Clip.antiAliasWithSaveLayer,
                                    decoration: BoxDecoration(
                                      color: kWhiteColor,
                                      borderRadius: BorderRadius.circular(10.0),
                                    ),
                                    child: Padding(
                                      padding:  EdgeInsets.only(left: kPadding20,right: kPadding20),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Expanded(
                                            child: DropdownButtonHideUnderline(
                                              child: DropdownButton<String>(
                                                value: _employeeSelect,
                                                items: _employeeList.map<DropdownMenuItem<String>>((value) {
                                                  return DropdownMenuItem<String>(
                                                    value: value,
                                                    child: Text(value),
                                                  );
                                                }).toList(),
                                                onChanged: (value) {
                                                  setState(() {
                                                    _employeeSelect = value;
                                                  });
                                                },
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                                ///title
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'نوع الموظف',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: kWhiteColor
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ///go back or register
                          Column(
                            children: [
                              ///log in button
                              Container(
                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                decoration: BoxDecoration(
                                  color: kSecondaryColor,
                                  borderRadius:
                                      BorderRadius.circular(15.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsets.all(kPadding5),
                                  child: MaterialButton(
                                    onPressed: () {},
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
                                height:
                                    MediaQuery.of(context).size.height *
                                        0.004,
                                width: MediaQuery.of(context).size.width *
                                    0.07,
                                color: kWhiteColor,
                              ),
                              CustomSizedBoxWidget(25.0, 0.0),

                              ///go back to login
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.center,
                                children: [
                                  ///button
                                  InkWell(
                                    onTap: () {
                                      Navigator.of(context).pop();
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
                                    style: TextStyle(color: kWhiteColor),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  ///register block
                  Expanded(
                    flex: 2,
                    child: Container(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      clipBehavior: Clip.antiAliasWithSaveLayer,
                      decoration: BoxDecoration(
                        color: kBlackColor,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(35.0),
                          topLeft: Radius.circular(35.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.all(kPadding15),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            ///title
                            Text(
                              'تسجيل حساب جديد',
                              style: TextStyle(
                                  fontSize: kFont25, color: kWhiteColor),
                            ),

                            ///name
                            Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: CustomTextFieldWidget(
                                        _usernameController, Icons.person)),
                                CustomSizedBoxWidget(0.0, 15.0),

                                ///title
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'اسم المستخدم',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: kFont16,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                            ///email
                            Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: CustomTextFieldWidget(
                                        _emailController, Icons.mail)),
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

                            ///phone
                           Row(
                             children: [
                               Expanded(
                                   flex: 2,
                                   child: CustomTextFieldWidget(
                                       _phoneController, Icons.phone)),
                               CustomSizedBoxWidget(0.0, 15.0),

                               ///title
                               Expanded(
                                 flex: 1,
                                 child: Text(
                                   'رقم الهاتف',
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
                                Expanded(
                                    flex: 2,
                                    child: CustomPasswordTextFieldWidget(
                                        _passwordController, Icons.lock)),
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

                            ///confirm password
                            Row(
                              children: [
                                Expanded(
                                    flex: 2,
                                    child: CustomPasswordTextFieldWidget(
                                        _confirmPasswordController,
                                        Icons.lock)),
                                CustomSizedBoxWidget(0.0, 15.0),

                                ///title
                                Expanded(
                                  flex: 1,
                                  child: Text(
                                    'تأكيد كلمة المرور',
                                    textAlign: TextAlign.end,
                                    style: TextStyle(
                                      color: kWhiteColor,
                                      fontSize: kFont16,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
  Widget dropdownField(title,list,hint)=>Row(
    children: [
      Expanded(
        flex: 1,
        child: Text(
          '$title',
        ),
      ),
      Expanded(
        flex: 4,
        child: Container(
          width: double.infinity,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          decoration: BoxDecoration(
            color: kWhiteColor,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Padding(
            padding:  EdgeInsets.only(left: kPadding20,right: kPadding20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: DropdownButtonHideUnderline(
                    child: DropdownButton<String>(
                      hint: Text('$hint'),
                      value: null,
                      items: list.map<DropdownMenuItem<String>>((value) {
                        return DropdownMenuItem<String>(
                          value: value['key'],
                          child: Text('${value['label']}'),
                          // value: value,
                          // child: Text(value),
                        );
                      }).toList(),
                      onChanged: (val) {
                        setState(() {});
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ],
  );
}
