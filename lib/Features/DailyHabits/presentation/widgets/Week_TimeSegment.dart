import 'package:fitness_app/Features/DailyHabits/presentation/widgets/Measure_Container_Track.dart';
import 'package:flutter/cupertino.dart';

import '../../../../generated/assets.dart';
import '../../../Home/presentation/widgets/DailyHabits_Goals.dart';

class WeekTimeSegment extends StatelessWidget {
  const WeekTimeSegment({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),
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
