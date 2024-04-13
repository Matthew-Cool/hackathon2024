import 'dart:html';
import 'package:flutter/cupertino.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:flutter/material.dart';

class CalendarPage extends StatefulWidget {
  const CalendarPage({Key? key}) : super(key: key);

  @override
  _CalendarPageState createState() => _CalendarPageState();
}

class _CalendarPageState extends State<CalendarPage> {
  //CalendarFormat format = CalendarFormat.month;
  //Map<DateTime, List<Event>>
  //var selectedEvents = eventList;

  var eventList;

  List<Event> _makeEventList(DateTime date) {
    List<Event> toReturn = [];

    for (DateTime time in eventList.keys) {
      if (time.year == date.year &&
          time.month == date.month &&
          time.day == date.day) {
        toReturn.add(eventList[time] as Event);
      }
    }
    return toReturn;
  }

  // sets selected and focused date to now (today)
  DateTime selectedDay = DateTime.now();
  DateTime focusedDay = DateTime.now();

  @override
  void initState() {
    //selectedEvents = {};
    super.initState();
  }

  @override
  void dispose() {
    //selectedEvents.dispose();
    super.dispose();
  }

  List<Event> _getEventsForDay(DateTime date) {
    return _makeEventList(date);
    //selectedEvents[date] ?? [];
  }

  //TEMP, think we can do a for loop to add all events from database
  // selectedEvents[DateTime(2022,8,15)].add(
  //    Event(title: 'first test', calendar: 1),
  //  );

  @override
  Widget build(BuildContext context) {
    List<Event> listOfEvents = [];
    for (Event time in eventList.values) {
      listOfEvents.add(time);
    }

    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TableCalendar(
            //
            // sets up the calendar foundation
            focusedDay: selectedDay,
            firstDay: DateTime(2024, 1, 1),
            lastDay: DateTime(2074, 12, 31),
            calendarFormat: CalendarFormat.month,
            availableCalendarFormats: const {CalendarFormat.month: 'Month'},

            //
            // loads events to each day
            eventLoader: _getEventsForDay,

            //
            // Calendar Style
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              weekendStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w800,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
            ),
            headerStyle: HeaderStyle(
              rightChevronIcon: Icon(
                CupertinoIcons.chevron_forward,
                color: Color.fromARGB(255, 0, 47, 255),
                size: MediaQuery.of(context).size.height * .045,
              ),
              leftChevronIcon: Icon(
                CupertinoIcons.chevron_back,
                color: Color.fromARGB(255, 0, 47, 255),
                size: MediaQuery.of(context).size.height * .045,
              ),
              titleCentered: true,
              titleTextStyle: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w700,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
            ),
            calendarStyle: CalendarStyle(
              defaultTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              weekendTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 60, 60, 60),
              ),
              outsideTextStyle: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w400,
                color: Color.fromARGB(255, 150, 150, 150),
              ),
              todayTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 0, 47, 255),
              ),
              todayDecoration: const BoxDecoration(
                color: Color.fromARGB(255, 240, 240, 240),
                shape: BoxShape.circle,
              ),
              isTodayHighlighted: true,
              selectedDecoration: const BoxDecoration(
                color: Color.fromARGB(255, 0, 47, 255),
                shape: BoxShape.circle,
              ),
              selectedTextStyle: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              markerDecoration: const BoxDecoration(
                color: Color.fromARGB(255, 153, 153, 153),
                shape: BoxShape.circle,
              ),
              markersMaxCount: 4,
              markerMargin: const EdgeInsets.all(1),
              markerSize: MediaQuery.of(context).size.height * .008,
            ),

            //
            // How it selects events and changes colors and stuff
            onDaySelected: (DateTime selectDay, DateTime focusDay) {
              setState(
                () {
                  selectedDay = selectDay;
                  focusedDay = focusDay;
                },
              );
            },
            selectedDayPredicate: (DateTime date) {
              return isSameDay(selectedDay, date);
            },
          ),
          const SizedBox(height: 6),
          // ..._getEventsForDay(selectedDay).map((Event event) => event),
        ],
      ),
    );
  }
}