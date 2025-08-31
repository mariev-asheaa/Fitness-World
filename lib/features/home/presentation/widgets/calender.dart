import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Constants.dart';

class Calendar extends StatefulWidget {
  const Calendar({super.key});

  @override
  State<Calendar> createState() => _CalendarState();
}

class _CalendarState extends State<Calendar> {
  DateTime _selectedDate = DateTime.now();
  List<DateTime> getCurrentWeekDates() {
    DateTime now = DateTime.now();
    int currentWeekday = now.weekday;
    DateTime sunday = now.subtract(Duration(days: currentWeekday % 7));
    return List.generate(7, (index) => sunday.add(Duration(days: index)));
  }

  @override
  Widget build(BuildContext context) {
    List<DateTime> weekDates = getCurrentWeekDates();

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 17),
      child: SizedBox(
        height: 64,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemCount: weekDates.length,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemBuilder: (context, index) {
            DateTime date = weekDates[index];
            bool isSelected = DateUtils.isSameDay(date, _selectedDate);

            return GestureDetector(
              onTap: () {
                setState(() {
                  _selectedDate = date;
                });
              },
              child: Container(
                width: 48,
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                decoration: ShapeDecoration(
                  color:Colors.white,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      width: 2,
                      color:  isSelected ? kPrimaryColor : Color(0xFFEAECF0),
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(
                      width: 32,
                      child: Text(
                        '${date.day}',
                        textAlign: TextAlign.center,
                        style: Styles.styleW50020(context).copyWith(color: isSelected ?kPrimaryColor : Colors.black,)
                      ),
                    ),
                    SizedBox(
                      width: 32,
                      child: Text(
                        DateFormat('EEE').format(date).toUpperCase(),
                        textAlign: TextAlign.center,
                        style: Styles.styleW70013(context).copyWith(fontSize: 10)
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
