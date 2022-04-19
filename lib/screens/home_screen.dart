// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, sized_box_for_whitespace, use_key_in_widget_constructors, prefer_typing_uninitialized_variables, avoid_unnecessary_containers

import 'package:corner/constants/colors.dart';
import 'package:corner/constants/fonts.dart';
import 'package:corner/constants/padding.dart';
import 'package:corner/widgets/custom_title.dart';
import 'package:corner/widgets/sized_box.dart';
import 'package:corner/widgets/text_fields/custom_text_field.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var _roomsSelect;
  List _roomsList = [];
  var _dateSelect;
  List _datesList = [];
  String content = 'New Registration';
  String timeType = '';
  // String certainTime = '';
  TextEditingController _employeeNameController = TextEditingController();
  _newRegister(){
    setState(() {
      content = 'New Registration';
    });
  }
  _currentRegister(){
    setState(() {
      content = 'Current Registration';
    });
  }
  _monthlyReports(){
    setState(() {
      content = 'Monthly Reports';
    });
  }
  _dailyReports(){
    setState(() {
      content = 'Daily Reports';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhiteColor,
      body: Padding(
        padding: EdgeInsets.all(kPadding30),
        child: Column(
          children: [
            ///drop down and rooms
            Row(
              textDirection: TextDirection.rtl,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ///dropdown
                Container(
                  width: MediaQuery.of(context).size.width*0.2,
                  clipBehavior: Clip.antiAliasWithSaveLayer,
                  decoration: BoxDecoration(
                    color: kBlackColor,
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  child: Padding(
                    padding:  EdgeInsets.all(kPadding10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                      backgroundColor: kWhiteColor,
                      radius: 15.0,
                      child: Icon(Icons.person,color: kBlackColor,),
                    ),
                        Expanded(
                          child: DropdownButtonHideUnderline(
                            child: DropdownButton<String>(
                              value: _roomsSelect,
                              alignment: AlignmentDirectional.centerEnd,
                              items: _roomsList.map<DropdownMenuItem<String>>((value) {
                                return DropdownMenuItem<String>(
                                  value: value,
                                  child: Text(
                                      value,
                                    style: TextStyle(
                                      color: kWhiteColor,
                                    ),
                                  ),
                                );
                              }).toList(),
                              onChanged: (value) {
                                setState(() {
                                  _roomsSelect = value;
                                });
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                ///salah
                InkWell(
                  onTap: (){},
                    child: roomNames('صلاح')),
                ///tareka
                InkWell(
                    onTap: (){},
                    child: roomNames('تراكه')),
                ///messi
                InkWell(
                  onTap: (){},
                    child: roomNames('ميسي')),
                ///ronaldo
                InkWell(
                  onTap: (){},
                    child: roomNames('رونالدو')),
                ///zidan
                InkWell(
                  onTap: (){},
                    child: roomNames('زيدان')),
              ],
            ),
            ///content
            Expanded(
              child: Row(
                textDirection: TextDirection.rtl,
                children: [
                  ///drawer
                  Expanded(
                    flex:2,
                    child: Padding(
                      padding: EdgeInsets.all(kPadding25),
                      child: Container(
                        clipBehavior: Clip.antiAliasWithSaveLayer,
                        height: MediaQuery.of(context).size.height,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(kPadding15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              ///title
                              CustomTitleWidget('مركز الالعاب'),
                              ///new register
                              Row(
                                children: [
                                  Expanded(child: gamesList('حجز جديد', Icons.person,_newRegister)),
                                ],
                              ),
                              ///current register
                              Row(
                                children: [
                                  Expanded(child: gamesList('الحجزات الحاليه', Icons.person,_currentRegister)),
                                ],
                              ),
                              ///daily reports
                              Row(
                                children: [
                                  Expanded(child: gamesList('التقرير اليومي', Icons.person,_dailyReports)),
                                ],
                              ),
                              ///monthly reports
                              Row(
                                children: [
                                  Expanded(child: gamesList('التقرير الشهري', Icons.person,_monthlyReports)),
                                ],
                              ),
                              ///add new room
                              Row(
                                children: [
                                  Expanded(child: gamesList('اضافه غرفه جديده', Icons.person,(){})),
                                ],
                              ),
                              ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ///content
                  Expanded(
                    flex: 4,
                      child: Padding(
                        padding: EdgeInsets.all(kPadding25),
                        child: Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                            color: Colors.grey,
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(top: kPadding20,left:kPadding20,right:kPadding20 ),
                            child: Column(
                              children: [
                                if(content == 'New Registration')
                                  Expanded(
                                    child: Padding(
                                      padding:  EdgeInsets.all(kPadding15),
                                      child: Column(
                                        children: [
                                          ///title
                                          Padding(
                                            padding: EdgeInsets.only(bottom: kPadding15),
                                            child: CustomTitleWidget('حجز جديد'),
                                          ),
                                          ///content
                                          Expanded(
                                            child: Row(
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              textDirection: TextDirection.rtl,
                                              children: [
                                                ///entering data
                                                Expanded(
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      ///employee name
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          ///text field
                                                          Expanded(
                                                            flex: 3,
                                                            child: Container(
                                                              width: MediaQuery.of(context).size.width*0.2,
                                                              height: MediaQuery.of(context).size.height*0.05,
                                                              child: CustomTextFieldWidget(
                                                                  _employeeNameController, Icons.person),
                                                            ),
                                                          ),
                                                          ///title
                                                          Expanded(
                                                            flex: 1,
                                                            child: Text(
                                                              'اسم الموظف',
                                                              textAlign: TextAlign.end,
                                                              style: TextStyle(
                                                                color: kWhiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      ///room name
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        children: [
                                                          ///dropdown
                                                          Expanded(
                                                            flex:3,
                                                            child: Container(
                                                              width: MediaQuery.of(context).size.width*0.2,
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
                                                                          value: null,
                                                                          items: [].map<DropdownMenuItem<String>>((value) {
                                                                            return DropdownMenuItem<String>(
                                                                              value: value,
                                                                              child: Text(value),
                                                                            );
                                                                          }).toList(),
                                                                          onChanged: (value) {
                                                                            setState(() {
                                                                              // _employeeSelect = value;
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
                                                            flex:1,
                                                            child: Text(
                                                              'اسم الروم',
                                                              textAlign: TextAlign.end,
                                                              style: TextStyle(
                                                                  color: kWhiteColor
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      ///current time
                                                      Row(
                                                        textDirection: TextDirection.rtl,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          ///title
                                                          Expanded(
                                                            flex:1,
                                                            child: Text(
                                                              'الوقت الحالي',
                                                              textAlign: TextAlign.end,
                                                              style: TextStyle(
                                                                color: kWhiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex:3,
                                                            child: Text(
                                                              '${DateTime.now()}',
                                                              textAlign: TextAlign.end,
                                                              style: TextStyle(
                                                                color: kWhiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      ///time type title
                                                      Row(
                                                        textDirection: TextDirection.rtl,
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        children: [
                                                          ///title
                                                          Expanded(
                                                            flex:1,
                                                            child: Text(
                                                              'نوع الوقت',
                                                              textAlign: TextAlign.end,
                                                              style: TextStyle(
                                                                color: kWhiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                          Expanded(
                                                            flex:3,
                                                            child: Container(),
                                                          ),
                                                        ],
                                                      ),
                                                      ///time types
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        textDirection: TextDirection.rtl,
                                                        children: [
                                                          ///open
                                                          Expanded(
                                                            child: Container(
                                                              child: RadioListTile<String>(
                                                                title:  Text('مفتوح',style: TextStyle(color: kWhiteColor),),
                                                                value: 'مفتوح',
                                                                activeColor: kWhiteColor,
                                                                groupValue: timeType,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    timeType = value!;
                                                                    //print(_character);
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                          ///certain
                                                          Expanded(
                                                            child: Container(
                                                              child: RadioListTile<String>(
                                                                title:  Text('محدد',style: TextStyle(color: kWhiteColor),),
                                                                value: 'محدد',
                                                                activeColor: kWhiteColor,
                                                                groupValue: timeType,
                                                                onChanged: (value) {
                                                                  setState(() {
                                                                    timeType = value!;
                                                                  });
                                                                },
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      ///number of hours
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        textDirection: TextDirection.rtl,
                                                        children: [
                                                          Expanded(
                                                            flex:3,
                                                            child: Text(
                                                              'عدد الساعات',
                                                              textAlign: TextAlign.start,
                                                              style: TextStyle(
                                                                color: kWhiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                          CustomSizedBoxWidget(0.0, 5.0),
                                                          Expanded(
                                                            child: Container(
                                                              width: MediaQuery.of(context).size.width*0.05,
                                                              height: MediaQuery.of(context).size.height*0.04,
                                                              clipBehavior: Clip.antiAliasWithSaveLayer,
                                                              decoration: BoxDecoration(
                                                                color: kWhiteColor,
                                                                borderRadius: BorderRadius.circular(8.0),
                                                              ),
                                                              child: Center(
                                                                child: Text(
                                                                  '',
                                                                  style: TextStyle(
                                                                    color: kBlackColor
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      ///end time
                                                      Row(
                                                        mainAxisAlignment: MainAxisAlignment.end,
                                                        textDirection: TextDirection.rtl,
                                                        children: [
                                                          Expanded(
                                                            flex:3,
                                                            child: Text(
                                                              'وقت الانتهاء',
                                                              textAlign: TextAlign.start,
                                                              style: TextStyle(
                                                                color: kWhiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                          CustomSizedBoxWidget(0.0, 5.0),
                                                          Expanded(
                                                            child: Text(
                                                              '8:00PM',
                                                              textAlign: TextAlign.center,
                                                              style: TextStyle(
                                                                color: kWhiteColor,
                                                              ),
                                                            ),
                                                          ),
                                                          // Container(
                                                          //   width: MediaQuery.of(context).size.width*0.05,
                                                          //   height: MediaQuery.of(context).size.height*0.04,
                                                          //   clipBehavior: Clip.antiAliasWithSaveLayer,
                                                          //   decoration: BoxDecoration(
                                                          //     color: kWhiteColor,
                                                          //     borderRadius: BorderRadius.circular(8.0),
                                                          //   ),
                                                          //   child: Center(
                                                          //     child: Text(
                                                          //       '',
                                                          //       style: TextStyle(
                                                          //           color: kBlackColor
                                                          //       ),
                                                          //     ),
                                                          //   ),
                                                          // ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                                ///extras
                                                Expanded(
                                                    child: Padding(
                                                      padding: EdgeInsets.all(kPadding10),
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                        children: [
                                                          ///title
                                                          Row(
                                                            textDirection: TextDirection.rtl,
                                                            mainAxisAlignment: MainAxisAlignment.start,
                                                            children: [
                                                              ///title
                                                              Expanded(
                                                                  flex:2,
                                                                  child: CustomTitleWidget('اضافات')),
                                                              Expanded(
                                                                flex:7,
                                                                child: Container(),
                                                              ),
                                                            ],
                                                          ),
                                                          ///table
                                                          Container(
                                                            clipBehavior: Clip.antiAliasWithSaveLayer,
                                                            width: double.infinity,
                                                            height: MediaQuery.of(context).size.height*0.45,
                                                            decoration: BoxDecoration(
                                                              color: kWhiteColor,
                                                              borderRadius: BorderRadius.circular(10.0),
                                                            ),
                                                          ),
                                                          ///button
                                                          Container(
                                                            clipBehavior: Clip.antiAliasWithSaveLayer,
                                                            decoration: BoxDecoration(
                                                              borderRadius: BorderRadius.circular(10.0),
                                                              color: kPrimaryColor
                                                            ),
                                                            child: MaterialButton(
                                                              onPressed: (){},
                                                              child: Text(
                                                                'اضف',
                                                                style: TextStyle(
                                                                  color: kWhiteColor,
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
                                          ),
                                          ///register button
                                          Container(
                                            clipBehavior: Clip.antiAliasWithSaveLayer,
                                            decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(10.0),
                                                color: kPrimaryColor
                                            ),
                                            child: MaterialButton(
                                              onPressed: (){},
                                              child: Text(
                                                'اضف',
                                                style: TextStyle(
                                                  color: kWhiteColor,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                if(content == 'Current Registration')
                                  Expanded(
                                    child: Column(
                                      children: [
                                        ///title
                                        Padding(
                                          padding: EdgeInsets.only(bottom: kPadding15),
                                          child: CustomTitleWidget('الحجزات الحاليه'),
                                        ),
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            textDirection: TextDirection.rtl,
                                            children: [
                                              ///table
                                              Expanded(
                                                flex: 10,
                                                child: Container(
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  decoration: BoxDecoration(
                                                      color:kWhiteColor,
                                                      borderRadius: BorderRadius.circular(10.0)
                                                  ),
                                                  child: Table(
                                                    border: TableBorder.all(borderRadius: BorderRadius.circular(10.0)),
                                                    textDirection: TextDirection.rtl,
                                                    children: [
                                                      buildRow(['اسم الروم','نوع الموقت','تاريخ الدء','تاريخ الانتهاء','الوقت المستهلك','اضافات','التكلفه'],isHeader: true),
                                                      //****//modify this and add your data this is just a demo
                                                      buildRow(['three','two','one','one','one','one','one']),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ///buttons
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: kPadding15,right: kPadding15),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      ///add
                                                      tableSideButton('اضف', kPrimaryColor,(){}),
                                                      ///modify
                                                      tableSideButton('تعديل', kSecondaryColor,(){}),
                                                      ///delete
                                                      tableSideButton('حذف', kPinkColor,(){}),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if(content == 'Monthly Reports')
                                  Expanded(
                                    child: Column(
                                      children: [
                                        ///title
                                        Padding(
                                          padding: EdgeInsets.only(bottom: kPadding15),
                                          child: CustomTitleWidget('التقرير الشهري'),
                                        ),
                                        ///drop down
                                        Padding(
                                          padding: EdgeInsets.only(bottom: kPadding15),
                                          child: Row(
                                            textDirection: TextDirection.rtl,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*0.2,
                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                decoration: BoxDecoration(
                                                  color: kWhiteColor,
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                child: Padding(
                                                  padding:  EdgeInsets.all(kPadding10),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Expanded(
                                                        child: DropdownButtonHideUnderline(
                                                          child: DropdownButton<String>(
                                                            value: _dateSelect,
                                                            // alignment: AlignmentDirectional.centerEnd,
                                                            items: _datesList.map<DropdownMenuItem<String>>((value) {
                                                              return DropdownMenuItem<String>(
                                                                value: value,
                                                                child: Text(
                                                                  value,
                                                                  style: TextStyle(
                                                                    color: kBlackColor,
                                                                  ),
                                                                ),
                                                              );
                                                            }).toList(),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _dateSelect = value;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //table and buttons
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            textDirection: TextDirection.rtl,
                                            children: [
                                              ///table
                                              Expanded(
                                                flex: 10,
                                                child: Container(
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  decoration: BoxDecoration(
                                                      color:kWhiteColor,
                                                      borderRadius: BorderRadius.circular(10.0)
                                                  ),
                                                  child: Table(
                                                    border: TableBorder.all(borderRadius: BorderRadius.circular(10.0)),
                                                    textDirection: TextDirection.rtl,
                                                    children: [
                                                      buildRow(['اسم الروم','نوع الموقت','تاريخ الدء','تاريخ الانتهاء','الوقت المستهلك','اضافات','التكلفه'],isHeader: true),
                                                      //****//modify this and add your data this is just a demo
                                                      buildRow(['three','two','one','one','one','one','one']),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ///buttons
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: kPadding15,right: kPadding15),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      ///add
                                                      tableSideButton('اضف', kPrimaryColor,(){}),
                                                      ///modify
                                                      tableSideButton('تعديل', kSecondaryColor,(){}),
                                                      ///delete
                                                      tableSideButton('حذف', kPinkColor,(){}),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                if(content == 'Daily Reports')
                                  Expanded(
                                    child: Column(
                                      children: [
                                        ///title
                                        Padding(
                                          padding: EdgeInsets.only(bottom: kPadding15),
                                          child: CustomTitleWidget('التقرير اليومي'),
                                        ),
                                        ///drop down
                                        Padding(
                                          padding: EdgeInsets.only(bottom: kPadding15),
                                          child: Row(
                                            textDirection: TextDirection.rtl,
                                            mainAxisAlignment: MainAxisAlignment.start,
                                            children: [
                                              Container(
                                                width: MediaQuery.of(context).size.width*0.2,
                                                clipBehavior: Clip.antiAliasWithSaveLayer,
                                                decoration: BoxDecoration(
                                                  color: kWhiteColor,
                                                  borderRadius: BorderRadius.circular(10.0),
                                                ),
                                                child: Padding(
                                                  padding:  EdgeInsets.all(kPadding10),
                                                  child: Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: [
                                                      Expanded(
                                                        child: DropdownButtonHideUnderline(
                                                          child: DropdownButton<String>(
                                                            value: _dateSelect,
                                                            // alignment: AlignmentDirectional.centerEnd,
                                                            items: _datesList.map<DropdownMenuItem<String>>((value) {
                                                              return DropdownMenuItem<String>(
                                                                value: value,
                                                                child: Text(
                                                                  value,
                                                                  style: TextStyle(
                                                                    color: kBlackColor,
                                                                  ),
                                                                ),
                                                              );
                                                            }).toList(),
                                                            onChanged: (value) {
                                                              setState(() {
                                                                _dateSelect = value;
                                                              });
                                                            },
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        //table and buttons
                                        Expanded(
                                          child: Row(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            textDirection: TextDirection.rtl,
                                            children: [
                                              ///table
                                              Expanded(
                                                flex: 10,
                                                child: Container(
                                                  clipBehavior: Clip.antiAliasWithSaveLayer,
                                                  decoration: BoxDecoration(
                                                      color:kWhiteColor,
                                                      borderRadius: BorderRadius.circular(10.0)
                                                  ),
                                                  child: Table(
                                                    border: TableBorder.all(borderRadius: BorderRadius.circular(10.0)),
                                                    textDirection: TextDirection.rtl,
                                                    children: [
                                                      buildRow(['اسم الروم','نوع الموقت','تاريخ الدء','تاريخ الانتهاء','الوقت المستهلك','اضافات','التكلفه'],isHeader: true),
                                                      //****//modify this and add your data this is just a demo
                                                      buildRow(['three','two','one','one','one','one','one']),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              ///buttons
                                              Expanded(
                                                flex: 2,
                                                child: Padding(
                                                  padding: EdgeInsets.only(left: kPadding15,right: kPadding15),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                    children: [
                                                      ///add
                                                      tableSideButton('اضف', kPrimaryColor,(){}),
                                                      ///modify
                                                      tableSideButton('تعديل', kSecondaryColor,(){}),
                                                      ///delete
                                                      tableSideButton('حذف', kPinkColor,(){}),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                              ],
                            ),
                          ),
                        ),
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
  Widget roomNames(title)=>Container(
    height: MediaQuery.of(context).size.height*0.08,
    width: MediaQuery.of(context).size.width*0.07,
    clipBehavior: Clip.antiAliasWithSaveLayer,
    decoration: BoxDecoration(
      color: kBlueColor,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(10.0),
        topRight: Radius.circular(40.0),
        bottomLeft: Radius.circular(10.0),
        bottomRight: Radius.circular(10.0),
      ),
    ),
    child: Center(
      child: Text(
        '$title',
        style: TextStyle(
          color: kWhiteColor,
        ),
      ),
    ),
  );
  Widget gamesList(title,icon,onTap)=>Container(
    width: MediaQuery.of(context).size.width*0.15,
    child: Padding(
      padding: EdgeInsets.all(kPadding15),
      child: InkWell(
        onTap: onTap,
        child: Row(
          textDirection: TextDirection.rtl,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(icon,color: Colors.yellow,),
            CustomSizedBoxWidget(0.0, 15.0),
            Text(
              '$title',
              textAlign: TextAlign.start,
              style: TextStyle(
                  color: kWhiteColor
              ),
            ),
          ],
        ),
      ),
    ),
  );
  TableRow buildRow(List<String> cells,{bool isHeader = false})=>TableRow(
    children: cells.map((cell) {
      final style = TextStyle(
        fontWeight: isHeader?FontWeight.bold:FontWeight.normal,
        fontSize: kFont18,
      );
      return Padding(
      padding: EdgeInsets.all(kPadding10),
      child: Text(
          cell,
          style: style,
      ),
    );
    }).toList(),
  );
  Widget tableSideButton(title,color,onTap)=>InkWell(
    onTap: onTap,
    child: Container(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      height: MediaQuery.of(context).size.height*0.15,
      width: MediaQuery.of(context).size.width*0.2,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Center(
        child: Text(
          '$title',
          style: TextStyle(
            fontSize: kFont18,
            color: kWhiteColor
          ),
        ),
      ),
    ),
  );
}
