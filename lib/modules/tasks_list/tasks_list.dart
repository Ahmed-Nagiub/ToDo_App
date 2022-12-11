import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_app/modules/tasks_list/task_item.dart';

class tasksList extends StatelessWidget {

  static const String routeName='tasksList';

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(223, 236, 219, 1.0),
      child: Column(
        children: [
          CalendarTimeline(
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 365)),
            lastDate: DateTime.now().add(Duration(days: 365)),
            onDateSelected: (date) => print(date),
            leftMargin: 20,
            monthColor: Colors.black,
            dayColor: Colors.black,
            activeDayColor: Colors.white,
            activeBackgroundDayColor: Colors.blue,
            selectableDayPredicate: (day) => true,
            dotsColor: Colors.white,
            locale: 'en',
          ),
          Expanded(
            child: ListView.builder(itemBuilder: (context, index) {
              return TaskItem();
            },
              itemCount: 15,
            ),
          ),
        ],
      ),
    );
  }
  onWeekSelect(data) {
    print("Selected week starting at -> $data");
  }
  onSelect(data) {
    print("Selected Date -> $data");
  }
}
