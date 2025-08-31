import 'package:fitness_app/Features/Home/presentation/widgets/body_metrics.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Back_Icon.dart';



class SeeallBodymetricesView extends StatelessWidget {
  const SeeallBodymetricesView({super.key});
static const routeName='BodyMetricesDetails';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Metrics progress',
          style: Styles.styleW70032(context),
        ),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 34),
              child: Bodymetrics(isSeeAllVisible: false,),
            ),
                    ],
                  ),
          )),
    );
  }
}
