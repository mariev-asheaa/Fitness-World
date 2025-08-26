import 'package:fitness_app/Features/Home/presentation/widgets/SeeMore_Stories_Body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SeemoreStoriesView extends StatelessWidget {
  const SeemoreStoriesView({super.key});
  static const routeName = 'stories';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(child: SeemoreStories(),
    ));
  }
}
