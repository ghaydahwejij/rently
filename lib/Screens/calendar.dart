import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

import 'hall_details.dart';
import 'menu.dart';

class Meeting {
  Meeting(this.eventName, this.from, this.to, this.background, this.isAllDay);
  String eventName;
  DateTime from;
  DateTime to;
  Color background;
  bool isAllDay;
}
class MeetingDataSource extends CalendarDataSource {
  MeetingDataSource(this.source);

  List<Meeting> source;

  @override
  List<dynamic> get appointments => source;

  @override
  DateTime getStartTime(int index) {
    return source[index].from;
  }
  //
  // @override
  // DateTime getEndTime(int index) {
  //   return source[index].to;
  // }

  @override
  String getSubject(int index) {
    return source[index].eventName;
  }

  @override
  Color getColor(int index) {
    return source[index].background;
  }

  @override
  bool isAllDay(int index) {
    return source[index].isAllDay;
  }
}


class Calendar extends StatelessWidget {
  int index;
   Calendar({Key? key,required this.index}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xff004504),
                ), onPressed: (){Navigator.push(context,MaterialPageRoute(builder: (context) => HallDetails(index: index,)));},
              );
            },
          ),
          backgroundColor: Colors.white,
          actions: [

            GestureDetector(child: Image.asset("images/l.png"),
              onTap:()
              {Navigator.push(context,MaterialPageRoute(builder: (context) => Menu()));},),
            SizedBox(width: 15,),
          ],
        ),
        body: SfCalendar(
          view: CalendarView.month,
          todayHighlightColor: Color(0xFF0F8644),
          dataSource: MeetingDataSource(_getDataSource()),
          monthViewSettings: MonthViewSettings(
              appointmentDisplayMode: MonthAppointmentDisplayMode.appointment),
        )
    );
  }

  List<Meeting> _getDataSource() {
    var meetings = <Meeting>[];
    final DateTime today = DateTime.now();
    final DateTime startTime =
    DateTime( 2023,5,12,0, 0, 0);
    final DateTime endTime = startTime.add(const Duration(hours: 12));
    meetings.add(Meeting('', startTime, endTime, const Color(0xFF0F8644), false));
   final DateTime startTime2 =
    DateTime( 2023,5,20,0, 0, 0);
    final DateTime endTime2 = startTime.add(const Duration(hours: 12));
    meetings.add(Meeting('', startTime2, endTime2, const Color(0xFF0F8644), false));

    final DateTime startTime3 =
    DateTime( 2023,5,23,0, 0, 0);
    final DateTime endTime3 = startTime.add(const Duration(hours: 12));
    meetings.add(Meeting('', startTime3, endTime3, const Color(0xFF0F8644), false));

    return meetings;
  }


}

  // Widget build(BuildContext context) {
  //   return MaterialApp(
  //     home: Scaffold(
  //       body:Container(
  //       child: SfCalendar(
  //         view: CalendarView.month,
  //         showWeekNumber: true,
  //         selectionDecoration: BoxDecoration(
  //           color: Colors.transparent,
  //           border: Border.all(color: Colors.black, width: 2),
  //           borderRadius: const BorderRadius.all(Radius.circular(4)),
  //           shape: BoxShape.rectangle,
  //         ),
  //
  //       ),
  //     ),
  //     ),
  //   );
  // }

