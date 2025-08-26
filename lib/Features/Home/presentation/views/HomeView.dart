import 'package:fitness_app/Features/Home/cubits/home_data_cubit.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Button_Nav_Bar.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Home_Body.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
