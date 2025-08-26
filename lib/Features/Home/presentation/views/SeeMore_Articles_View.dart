import 'package:fitness_app/Features/Home/presentation/widgets/SeeMore_Articles_Body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeemoreArticlesView extends StatelessWidget {
  const SeemoreArticlesView({super.key});
  static const routeName='articles';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SafeArea(
      child: SeeMoreArticles(),
    ));
  }
}
