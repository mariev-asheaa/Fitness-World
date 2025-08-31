import 'package:fitness_app/Features/Home/models/home_data_model.dart';
import 'package:fitness_app/Features/Home/presentation/views/see_all_body_metrics_view.dart';
import 'package:fitness_app/Features/Home/presentation/views/see_more_articles_view.dart';
import 'package:fitness_app/Features/Home/presentation/views/see_more_stories_view.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/articles_details.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/stories_details.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/see_more_articles_body.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/see_more_stories_body.dart';
import 'package:fitness_app/Features/Packages/presentation/views/package_details_view.dart';
import 'package:fitness_app/Features/Packages/presentation/views/packages_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../Features/Home/presentation/views/home_view.dart';
import '../../Features/Splash/presentation/splash_view.dart';
import '../../Features/daily_habits/presentation/views/daily_habits_view.dart';

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