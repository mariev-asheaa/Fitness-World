import 'package:fitness_app/Features/Home/cubits/home_data_cubit.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/button_navbar.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/home_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utils/Constants.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  static const routeName = 'Home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: SafeArea(child: const HomeBody()),
      bottomNavigationBar: const ButtonNavBar(),
    );
  }
}
