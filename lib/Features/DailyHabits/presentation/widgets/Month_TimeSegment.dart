import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../generated/assets.dart';
import '../../../Home/presentation/widgets/DailyHabits_Goals.dart';
import 'Measure_Container_Track.dart';

class MonthTimesegment extends StatefulWidget {
  const MonthTimesegment({super.key});

  @override
  State<MonthTimesegment> createState() => _MonthTimesegmentState();
}

class _MonthTimesegmentState extends State<MonthTimesegment> {
  int selectedWeek = 0;
  final List<String> weeks = [
    "1st\nweek",
    "2nd\nweek",
    "3rd\nweek",
    "4th\nweek",
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        SizedBox(
          height: 64,
          width: double.infinity,
          child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
            bool isSelected = selectedWeek == index;
          return InkWell(
            onTap: (){
              setState(() {
                selectedWeek=index;
              });
            },
            child: Container(
              width: 90,
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(
                    width: 2,
                    color: isSelected?kPrimaryColor: Color(0xFFEAECF0),
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
              ),
              child: Text(
                weeks[index],
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: isSelected ?kPrimaryColor : Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          );
        },
            separatorBuilder: (context, index) => const SizedBox(width: 8),
            itemCount: 4
          )
          ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: DailyhabitsGoals(),
        ),
        MeasureContainerTrack(title: 'Meditate', subTitle: '30/30 MIN', image: Assets.iconsMeditate),
        MeasureContainerTrack(title: 'Meditate', subTitle: '30/30 MIN', image: Assets.iconsMeditate),
        MeasureContainerTrack(title: 'The 5 Prayers', subTitle: '5/5 Prayer', image: Assets.iconsPrayers),

        MeasureContainerTrack(title: 'Reading', subTitle: '5/5 Pages', image: Assets.iconsReading),
        MeasureContainerTrack(title: 'Nutrition Plan', subTitle: '5/5 Meals', image: Assets.iconsNeuration),
        MeasureContainerTrack(title: 'Assessment', subTitle: '3/3 Assessments', image: Assets.iconsAssenment),

      ],
    );
  }
}
