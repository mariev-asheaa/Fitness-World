import 'package:fitness_app/Features/Home/presentation/widgets/articles.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/biological_age.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/body_metrics.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/banner_listview.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/daily_habits.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/home_header.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/success_stories.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package_name.dart';



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
