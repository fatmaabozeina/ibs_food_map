import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MainDairy extends StatefulWidget {
  const MainDairy({Key? key}) : super(key: key);

  @override
  _MainDairyState createState() => _MainDairyState();
}

class _MainDairyState extends State<MainDairy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffFEF9EA),
        appBar: AppBar(
          systemOverlayStyle:
              SystemUiOverlayStyle(statusBarColor: Color(0xFFFFE4C7)),
          backgroundColor: Color(0xffFEF9EA),
          automaticallyImplyLeading: false,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          bottom: AppBar(
            elevation: 0,
            backgroundColor: Color(0xffFEF9EA),
            automaticallyImplyLeading: false,
            title: Text(
              'Today',
              style: TextStyle(
                  fontSize: 30,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w900,
                  color: Colors.black),
            ),
            actions: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextButton(
                        style: TextButton.styleFrom(
                            shape: StadiumBorder(),
                            backgroundColor: Colors.teal,
                            textStyle: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                            padding: EdgeInsets.symmetric(
                              horizontal: 20,
                            ),
                            primary: Colors.white),
                        onPressed: () {},
                        child: Text(
                          'Add meal',
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 10.0, right: 10),
          child: SfCalendar(
            view: CalendarView.week,
            showCurrentTimeIndicator: true,
            // cellBorderColor: Colors.transparent,
            headerHeight: 70,
            timeSlotViewSettings: const TimeSlotViewSettings(
              timeRulerSize: 60,
              timeIntervalHeight: 60,
              timeTextStyle: TextStyle(
                color: Colors.grey,
                fontSize: 18,
              ),
            ),
            todayHighlightColor: Colors.transparent,
            // showDatePickerButton: true,
            todayTextStyle: TextStyle(color: Colors.red, fontSize: 20),
            viewHeaderStyle: ViewHeaderStyle(
              dateTextStyle: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
              dayTextStyle: TextStyle(color: Colors.grey, fontSize: 20),
            ),
            headerStyle: CalendarHeaderStyle(
                backgroundColor: Color(0xFFFFE4C7),
                textAlign: TextAlign.center,
                textStyle: TextStyle(
                    color: Colors.black,
                    letterSpacing: 5,
                    fontSize: 25,
                    fontWeight: FontWeight.w500)),
          ),
        ));
  }
}

// mixin Calendar {
//   String getDay();
// }

// class A implements Calendar {
//   @override
//   String getDay() {
//     return "Sun";
//   }
// }
