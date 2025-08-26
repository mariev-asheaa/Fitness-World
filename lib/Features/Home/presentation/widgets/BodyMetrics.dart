import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';
import '../views/SeeAll_BodyMetrices_View.dart';
import 'Background.dart';
import 'Bmi_BodyMetrics.dart';
import 'BodyMetricsChart.dart';
import 'BodyMetrics_Data.dart';

class Bodymetrics extends StatefulWidget {
  const Bodymetrics({super.key, required this.isSeeAllVisible});
final  bool isSeeAllVisible;
  @override
  State<Bodymetrics> createState() => _BodymetricsState();
}

class _BodymetricsState extends State<Bodymetrics> {
  List<bool> isChartVisible = [true, false, false];

  void toggleChart(int chartIndex) {
    setState(() {
      isChartVisible[chartIndex] = !isChartVisible[chartIndex];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Body Metrics', style: Styles.styleW70022(context)),
              Visibility(
                visible: widget.isSeeAllVisible,
                child: InkWell(
                    onTap: (){
                      Navigator.of(context, rootNavigator: true)
                          .pushNamed(SeeallBodymetricesView.routeName);
                    },
                    child: Text('See All', style: Styles.styleW40016(context).copyWith(color: kPrimaryColor))),
              ),
            ],
          ),

          // Chart 1
          InkWell(
            onTap: () => toggleChart(0),
            child: Column(
              children: [
                BodymetricsData(metrics: 'Muscle Mass', unit: '(kg)', currentMetric: 'Current weight'),
                BodyMetricsChart(isVisible: isChartVisible[0]),
              ],
            ),
          ),
          const Divider(),

          // Chart 2
          InkWell(
            onTap: () => toggleChart(1),
            child: Column(
              children: [
                BodymetricsData(metrics: 'Weight', unit: '(kg)', currentMetric: 'Current weight'),
                BodyMetricsChart(isVisible: isChartVisible[1]),
              ],
            ),
          ),
          const Divider(),

          // Chart 3
          InkWell(
            onTap: () => toggleChart(2),
            child: Column(
              children: [
                BodymetricsData(metrics: 'Body Fat', unit: '(%)', currentMetric: 'Current body fat'),
                BodyMetricsChart(isVisible: isChartVisible[2]),
              ],
            ),
          ),
          const Divider(),
          BmiBodymetrics(),
        ],
      ),
    );
  }
}
