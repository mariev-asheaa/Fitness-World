import 'package:fitness_app/Features/DailyHabits/presentation/views/DailyHabitsView.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Assessment.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Background.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Calender.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/DailyHabits_Goals.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Diet_Plan.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Measure_Container.dart';
import 'package:fitness_app/core/utiles/App_Styles.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../generated/assets.dart';

class DailyHabits extends StatelessWidget {
  const DailyHabits({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
        child:Column(
          children: [
            Row(
              children: [
        Text(
        'Daily Habits',
          style: Styles.styleW70022(context)
        ),
                Expanded(child: SizedBox()),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(
                      builder: (context) {
                        return Dailyhabitsview();
                      },
                    ));
                  },
                  child: Text(
                    'See All',
                    style: Styles.styleW40016(context).copyWith(color: kPrimaryColor)
                  ),
                ),
              ],
            ),
            DailyhabitsGoals(),
            Calendar(),
            MeasureContainer(title: 'Steps', subTitle: '1000/2000 Steps', image: Assets.iconsPersonIcon,),
            DietPlan(title: 'Diet', plan: 'Diet Plan Name', lastUpdate: 'Last Update 10 Apr', image: Assets.imagesShutterstock, percentage:0.3 , percentageText: '30%', color: Color(0x33B1DE35), progressColor: kGreen,),
            MeasureContainer(title: 'Drink the water', subTitle: '2000 Liter', image: Assets.iconsWaterIcon,trailingImage: SvgPicture.asset(Assets.iconsCup),),
            Assessment(width: 77.33, height: 28.53, widget: Text('Start',style: Styles.styleW70014(context).copyWith(color: Colors.white)),),
            MeasureContainer(title: 'Water Plants', subTitle: '2 Times', image: Assets.iconsWaterPlanets,trailingImage:SvgPicture.asset(Assets.iconsAddButton)),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: MeasureContainer(title: 'Meditate', subTitle: '30 Min', image: Assets.iconsMeditate,trailingImage:SvgPicture.asset(Assets.iconsDoneButton)),
            ),
            DietPlan(title: 'Workout', plan: 'Workout Plan Name', lastUpdate: 'Last Update 10 Apr', image: Assets.imagesRunners, percentage: 1, percentageText: '100%',color: Color(0xffE6FFFE), progressColor: Color(0xff60BFBC),)
          ],
        )
    );
  }
}
