import 'package:fitness_app/Features/Home/presentation/views/HomeView.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../generated/assets.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});
  static const routeName='Splash';
  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    navigateToHome();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body:  Center(
          child: SvgPicture.asset(Assets.imagesLogo,
            width: MediaQuery.sizeOf(context).height*.4,
            height: MediaQuery.sizeOf(context).height*.4,
          )
      ),
    );
  }

  void navigateToHome() {
    Future.delayed(Duration(seconds: 3),(){
      Navigator.pushReplacementNamed(context, HomeView.routeName);
    });
  }
}
