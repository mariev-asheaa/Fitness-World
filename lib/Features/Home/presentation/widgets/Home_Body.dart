import 'package:fitness_app/Features/Home/presentation/widgets/Articles.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Biological_Age.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/BodyMetrics.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Banner_ListView.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Daily_Habits.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Home_Header.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Success_Stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'Package_Name.dart';



class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

class _HomeBodyState extends State<HomeBody> {
  bool isActive=false;
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        const SliverToBoxAdapter(
          child: HomeHeader(),
        ),
        SliverToBoxAdapter(
          child: GestureDetector(
              onTap: (){
              setState(() {
                isActive=!isActive;
              });
              },
              child: PackageName(isActive: isActive)),
        ),
        const SliverToBoxAdapter(
          child: BannerListView(),
        ),
        const SliverToBoxAdapter(
          child: BiologicalAge(),
        ),
        const SliverToBoxAdapter(
          child: DailyHabits(),
        ),
         SliverToBoxAdapter(
         child: Bodymetrics(isSeeAllVisible: true,),
        ),
         SliverToBoxAdapter(
          child: SuccessStories(),
        ),
         SliverToBoxAdapter(
          child: Articles(),
        ),
      ],
    );
  }
}
