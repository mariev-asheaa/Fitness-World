import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/utils/text_styles.dart';


class DietPlan extends StatelessWidget {
  const DietPlan({super.key, required this.title, required this.plan, required this.lastUpdate, required this.image, required this.percentage, required this.percentageText, required this.color, required this.progressColor});
final String title,plan,lastUpdate,image,percentageText;
final double percentage;
final Color color,progressColor;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Stack(
        children:[
          Container(
            width: double.infinity,
            height: 102,
            decoration: ShapeDecoration(
              color: color,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1,
                  color: const Color(0xFFEAECF0),
                ),
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 22),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      title,
                      style: Styles.styleW40014(context).copyWith(color: Color(0xFF848A94))
                  ),
                  Row(
                    children: [
                      Text(
                          plan,
                          style:Styles.styleW50020(context).copyWith(color: Color(0xFF002055))
                      ),
                      Icon(Icons.arrow_forward_ios,size: 15,)
                    ],
                  ),
                  Text(
                      lastUpdate,
                      style: Styles.styleW40014(context).copyWith(color: Color(0xFF667085))
                  ),
                  LinearPercentIndicator(
                    padding: EdgeInsets.zero,
                    width: 140.0,
                    lineHeight: 8.0,
                    percent: percentage,
                    backgroundColor: Colors.white,
                    progressColor: progressColor,
                    animation: true,
                    animationDuration: 1000,
                    barRadius: Radius.circular(10),
                    trailing: Padding(
                      padding: const EdgeInsets.only(left: 9),
                      child: Text(
                        percentageText,
                        style: Styles.styleW50012(context).copyWith(color: progressColor)
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            bottom: 0,
            child: Image.asset(
              image,
              fit: BoxFit.fill,
              width: 70,
            ),
          ),
        ]
      ),
    );
  }
}
