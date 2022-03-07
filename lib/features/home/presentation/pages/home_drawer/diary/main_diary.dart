import 'dart:ffi';

import 'package:flutter/material.dart';
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
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          elevation: 0,
          leading: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          bottom: AppBar(
            elevation: 0,
            backgroundColor: Colors.white,
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
              Container(
                height: 30,
                margin: EdgeInsets.only(right: 10),
                child: TextButton(
                    style: TextButton.styleFrom(
                        shape: StadiumBorder(),
                        backgroundColor: Color(0xFFFFD365),
                        textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: .5),
                        padding: EdgeInsets.symmetric(
                          horizontal: 30,
                        ),
                        primary: Colors.white),
                    onPressed: () {},
                    child: Text(
                      'Add meal',
                    )),
              )
            ],
          ),
        ),
        body: SfCalendar(
          view: CalendarView.week,
          showCurrentTimeIndicator: true,
          cellBorderColor: Colors.amber,
          headerHeight: 60,
          timeSlotViewSettings: TimeSlotViewSettings(
            dayFormat: 'EEE',
            timeRulerSize: -1,
            timeIntervalHeight: 50,
            timeTextStyle: TextStyle(
              color: Colors.grey,
              fontSize: 15,
            ),
          ),
          todayHighlightColor: Colors.transparent,
          todayTextStyle: TextStyle(
              color: Colors.red, fontWeight: FontWeight.bold, fontSize: 20),
          viewHeaderStyle: ViewHeaderStyle(
            dateTextStyle: TextStyle(
                color: Colors.black, fontWeight: FontWeight.bold, fontSize: 18),
            dayTextStyle: TextStyle(color: Colors.grey, fontSize: 20),
          ),
          headerStyle: CalendarHeaderStyle(
              backgroundColor: Color(0xFF7FCD91),
              textAlign: TextAlign.center,
              textStyle: TextStyle(
                  color: Colors.white,
                  letterSpacing: 5,
                  fontSize: 25,
                  fontWeight: FontWeight.w500)),
        ));
  }
}
