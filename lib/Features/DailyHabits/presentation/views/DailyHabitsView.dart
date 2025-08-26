import 'package:fitness_app/Features/DailyHabits/presentation/widgets/DailyHabits_Details_Body.dart';
import 'package:fitness_app/core/utiles/Back_Icon.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';

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
