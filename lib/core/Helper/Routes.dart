import 'package:fitness_app/Features/Home/models/Home_Data_Model.dart';
import 'package:fitness_app/Features/DailyHabits/presentation/views/DailyHabitsView.dart';
import 'package:fitness_app/Features/Home/presentation/views/SeeAll_BodyMetrices_View.dart';
import 'package:fitness_app/Features/Home/presentation/views/SeeMore_Articles_View.dart';
import 'package:fitness_app/Features/Home/presentation/views/SeeMore_Stories_View.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Articels_Details.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Stories_Details.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/SeeMore_Articles_Body.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/SeeMore_Stories_Body.dart';
import 'package:fitness_app/Features/Packages/presentation/views/Package_Details_View.dart';
import 'package:fitness_app/Features/Packages/presentation/views/Packages_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Features/Home/presentation/views/HomeView.dart';
import '../../Features/Splash/presentation/Splash_View.dart';

Route<dynamic>onGenerateRoute(RouteSettings settings)
{
  switch(settings.name)
  {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context)=>SplashView());
    case HomeView.routeName:
      return MaterialPageRoute(builder: (context)=>HomeView());

    case SeemoreStoriesView.routeName:
      return MaterialPageRoute(builder: (context)=>SeemoreStoriesView());

    case SeemoreArticlesView.routeName:
      return MaterialPageRoute(builder: (context)=>SeemoreArticlesView());

    case StoriesDetails.routeName:
      final storyModel = settings.arguments as SuccessStories;
      return MaterialPageRoute(builder: (context)=>StoriesDetails(successStories: storyModel,));
    case ArticelsDetails.routeName:
      final articleModel = settings.arguments as Articles;
      return MaterialPageRoute(builder: (context)=>ArticelsDetails(articles: articleModel));

    case Dailyhabitsview.routeName:
      return MaterialPageRoute(builder: (context)=>Dailyhabitsview());

    case SeeallBodymetricesView.routeName:
      return MaterialPageRoute(builder: (context)=>SeeallBodymetricesView());

    case PackagesView.routeName:
      return MaterialPageRoute(builder: (context)=>PackagesView());

    case PackageDetailsView.routeName:
      return MaterialPageRoute(builder: (context)=>PackageDetailsView());

    default:
      return MaterialPageRoute(builder: (context)=>Scaffold());
  }
}