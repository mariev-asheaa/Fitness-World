import 'package:fitness_app/Features/Home/presentation/widgets/Background.dart';
import 'package:fitness_app/Features/Home/presentation/widgets/Chart.dart';
import 'package:fitness_app/core/utiles/App_Styles.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:fitness_app/core/utiles/CustomButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BiologicalAge extends StatelessWidget {
  const BiologicalAge({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 18),
            child: Text('Biological Age',
              style: Styles.styleW70022(context)
            ),
          ),
          Chart(),
          Divider(height: 1,),
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
          Text(
          'Aging slower',
            style: Styles.styleW50017(context).copyWith(color: kPrimaryColor)
          ),
                  Text(
                    'You are likely 3,4 years younger',
                    style: Styles.styleW50015(context).copyWith(
                      color:  Color(0xA83B3B3B),
                    )
                  ),
                ],
              ),
              Expanded(child: SizedBox()),
              Text(
                '18',
                style: Styles.styleW70049(context)
              ),
            ],
          ),
          Custombutton(),
        ],
      ),
    );
  }
}
