
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Back_Icon.dart';
import '../widgets/daily_habits_details_body.dart';

class Dailyhabitsview extends StatelessWidget {
  const Dailyhabitsview({super.key});
static const routeName='DailyhabitsDetails';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        centerTitle: true,
        title: Text(
          'Daily Habits',
          style: Styles.styleW70032(context),
        ),
      ),
    body: SafeArea(child: DailyHabitsDetails()),
    );
  }
}
