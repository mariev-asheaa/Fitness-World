import 'package:fitness_app/Features/DailyHabits/presentation/widgets/Month_TimeSegment.dart';
import 'package:fitness_app/Features/DailyHabits/presentation/widgets/Today_TimeSegment.dart';
import 'package:fitness_app/Features/DailyHabits/presentation/widgets/Week_TimeSegment.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/material.dart';


class TimeSegmentedControl extends StatefulWidget {
  @override
  _TimeSegmentedControlState createState() => _TimeSegmentedControlState();
}

class _TimeSegmentedControlState extends State<TimeSegmentedControl> {
  int selectedIndex = 0;
  final List<String> labels = ["Today", "Week", "Month"];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: EdgeInsets.all(4),
          decoration: BoxDecoration(
            color: Color(0xFFF2F2F2),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(labels.length, (index) {
              final isSelected = index == selectedIndex;
              return Expanded(
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedIndex = index;
                    });
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                      color: isSelected ? kPrimaryColor : Colors.transparent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(
                      child: Text(
                        labels[index],
                        style: TextStyle(
                          color: isSelected ? Colors.white : Color(0xFFADA4A5),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            }),
          ),
        ),
        IndexedStack(
          index: selectedIndex,
          children: [
            TodayTimesegment(),
            WeekTimeSegment(),
            MonthTimesegment(),
          ],
        ),
      ],
    );
  }
}
