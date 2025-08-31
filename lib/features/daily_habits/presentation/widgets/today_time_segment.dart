import 'package:fitness_app/Features/Home/presentation/widgets/diet_plan.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/measure_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Constants.dart';
import '../../../../generated/assets.dart';
import '../../../Home/presentation/widgets/assessment.dart';
import '../../../Home/presentation/widgets/daily_habits_goals.dart';
import 'dismissible_tasks.dart';
import 'section_divider.dart';

class TodayTimesegment extends StatefulWidget {
  const TodayTimesegment({super.key});

  @override
  State<TodayTimesegment> createState() => _TodayTimesegmentState();
}

class _TodayTimesegmentState extends State<TodayTimesegment> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
          child: DailyhabitsGoals(),
        ),
       SectionDivider(text: 'Remain'),
        const SizedBox(height: 10),
        DismissibleTasks(),
        const SizedBox(height: 20),
       SectionDivider(text: 'Completed'),
        MeasureContainer(title: 'Meditate', subTitle: '30 Min', image: Assets.iconsMeditate,trailingImage:SvgPicture.asset(Assets.iconsDoneButton),),
        DietPlan(title: 'Workout', plan: 'Workout Plan Name', lastUpdate: 'Last Update 10 Apr', image: Assets.imagesRunners, percentage: 1, percentageText: '100%',color: Color(0xffE6FFFE), progressColor: Color(0xff60BFBC),),
        MeasureContainer(title: 'The 5 Prayers', subTitle: '5 Prayer', image: Assets.iconsPrayers,trailingImage:SvgPicture.asset(Assets.iconsDoneButton),),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: MeasureContainer(title: 'Reading', subTitle: '5 Pages', image: Assets.iconsReading,trailingImage:SvgPicture.asset(Assets.iconsDoneButton),),
        ),
        Assessment(width: 36, height: 36, widget: Icon(Icons.check,color: Colors.white,size: 15,),),
        SizedBox(height: 22,),
        SectionDivider(text: 'Skipped'),
        DietPlan(title: 'Diet', plan: 'Diet Plan Name', lastUpdate: 'Last Update 10 Apr', image: Assets.imagesShutterstock, percentage:0.3 , percentageText: '30%', color: Color(0x33B1DE35), progressColor: kGreen,),
        MeasureContainer(title: 'Mobility Plan', subTitle: '12 Exercises', image: Assets.iconsMobility,trailingImage:SvgPicture.asset(Assets.iconsAddButton),),
        Assessment(width: 77.33, height: 28.53, widget: Text('Start',style: Styles.styleW70014(context).copyWith(color: Colors.white)),),
      ],
    );
  }
}
