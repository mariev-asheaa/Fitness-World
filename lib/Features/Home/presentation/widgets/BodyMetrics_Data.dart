import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';

class BodymetricsData extends StatelessWidget {
  const BodymetricsData({super.key, required this.metrics, required this.unit, required this.currentMetric});
final String metrics,unit,currentMetric;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: metrics,
                      style: Styles.styleW70014(context)
                    ),
                    TextSpan(
                      text: unit,
                      style: Styles.styleW4009(context)
                    ),
                  ],
                ),
              ),
              Text(
                'Last Update 10 Apr 2025',
                style: TextStyle(
                  color: const Color(0xFF667085),
                  fontSize: 11,
                  fontFamily: 'Helvetica Neue',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        Divider(),
        Row(
          children: [
            Column(
              spacing: 4,
              children: [
                Text(
                  currentMetric,
                  style: Styles.styleW4009(context)
                ),
                Text(
                  '30,4',
                  style: Styles.styleW70016(context).copyWith(color: kPrimaryColor)
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Column(
              spacing: 4,
              children: [
                Text(
                  'Last 30 days',
                  style: Styles.styleW4009(context)
                ),
                Text(
                  '-10,6',
                  style:  Styles.styleW70016(context).copyWith(color: kPrimaryColor)
                ),
              ],
            ),
            Expanded(child: SizedBox()),
            Column(
              spacing: 4,
              children: [
                Text(
                  'Anual average',
                  style: Styles.styleW4009(context)
                ),
                Text(
                  '40,6',
                  style:  Styles.styleW70016(context).copyWith(color: kPrimaryColor)
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
