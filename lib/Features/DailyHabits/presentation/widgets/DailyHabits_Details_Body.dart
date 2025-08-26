import 'package:fitness_app/core/utiles/Back_Icon.dart';
import 'package:fitness_app/Features/DailyHabits/presentation/widgets/Time_Segmented_Control.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';

class DailyHabitsDetails extends StatelessWidget {
  const DailyHabitsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 16),
        child: Column(
          children: [
            Divider(color: const Color(0xFFF4F4F4)),
            TimeSegmentedControl()
          ],
        ),
      ),
    );
  }
}
