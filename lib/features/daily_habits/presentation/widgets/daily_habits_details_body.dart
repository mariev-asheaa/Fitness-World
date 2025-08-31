
import 'package:flutter/material.dart';

import 'time_segmented_control.dart';

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
