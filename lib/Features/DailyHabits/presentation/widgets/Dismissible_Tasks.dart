import 'package:fitness_app/Features/DailyHabits/presentation/widgets/Tasks_Action-Container.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../generated/assets.dart';
import '../../../Home/presentation/widgets/Measure_Container.dart';

class DismissibleTasks extends StatefulWidget {
  const DismissibleTasks({super.key});

  @override
  State<DismissibleTasks> createState() => _DismissibleTasksState();
}

class _DismissibleTasksState extends State<DismissibleTasks> {
  List<MeasureContainer> items = [
    MeasureContainer(title: 'Drink the water', subTitle: '2000 Liter', image: Assets.iconsWaterIcon,trailingImage: SvgPicture.asset(Assets.iconsCup),),
    MeasureContainer(title: 'Water Plants', subTitle: '2 Times', image: Assets.iconsWaterPlanets,trailingImage:SvgPicture.asset(Assets.iconsAddButton)),
    MeasureContainer(title: 'Steps', subTitle: '1000/2000 Steps', image: Assets.iconsPersonIcon,),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...items.map((item) {
          return Dismissible(
            key: Key(item.title),
            background: Align(
              alignment: Alignment.centerLeft,
              child: TasksAction(text: 'Done', icon: Icons.check, color: kPrimaryColor,),
            ),
            secondaryBackground: Align(
              alignment: Alignment.centerRight,
              child: TasksAction(icon: Icons.arrow_forward_ios, text: 'Skip', color: Colors.black,),
            ),
            confirmDismiss: (direction) async {
              String action = direction == DismissDirection.startToEnd ? "Marked as Done ✅" : "Skipped ❌";
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(action)));
              return true;
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: item,
            ),
          );
        })
      ],
    );
  }
}
