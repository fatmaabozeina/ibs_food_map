import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class IntervalDataSource extends CalendarDataSource {
  IntervalDataSource(List<Appointment> source) {
    appointments = source;
  }
}

List<Appointment> getCalendarDataSource(String elementNmae) {
  List<Appointment> fodmapIntevel = [];
  final DateTime today = DateTime.now();
  final DateTime startTime = DateTime(today.year, today.month, today.day, 9, 0);
  final DateTime endTime = startTime.add(const Duration(hours: 3));

  fodmapIntevel.add(Appointment(
      startTime: startTime,
      endTime: endTime,
      color: Colors.yellow,
      subject: elementNmae,
      isAllDay: true));

  return fodmapIntevel;
}
