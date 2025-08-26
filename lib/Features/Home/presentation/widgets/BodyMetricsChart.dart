import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/Constants.dart';

class BodyMetricsChart extends StatelessWidget {
  const BodyMetricsChart({super.key,required this.isVisible});
 final bool isVisible;
  @override
  Widget build(BuildContext context) {
    final List<FlSpot> dataPoints = [
      FlSpot(0, 64.4),
      FlSpot(1, 63.0),
      FlSpot(2, 63),
    ];

    return Visibility(
      visible: isVisible,
      child: SizedBox(
        height: 250,
        child: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25,top: 25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: List.generate(5, (index) {
                  double value = 64.5 - (index * 0.5);
                  return SizedBox(
                    height: 30,
                    child: Text(
                      value.toStringAsFixed(1),
                      style: const TextStyle(color: kChartDataColor,fontSize: 10),
                    ),
                  );
                }),
              ),
            ),
            // Scrollable chart
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: SizedBox(
                    width: 700,
                    child: LineChart(
                      LineChartData(
                        minY: 62,
                        maxY: 64.5,
                        titlesData: FlTitlesData(
                          topTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              reservedSize: 35,
                              interval: 0.5,
                              getTitlesWidget: (value, meta) {
                                switch (value.toStringAsFixed(1)) {
                                  case '0.5':
                                    return const Text('November', style: TextStyle(color: kChartDataColor,fontSize: 9));
                                  case '1.0':
                                    return const Text('December', style: TextStyle(color: kChartDataColor,fontSize: 9));
                                  case '1.5':
                                    return const Text('January', style: TextStyle(color: kChartDataColor,fontSize: 9));
                                  default:
                                    return const SizedBox.shrink();
                                }
                              },
                            ),
                          ),
                          rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
                          leftTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)), // <-- hide internal Y-axis
                          bottomTitles: AxisTitles(
                            sideTitles: SideTitles(
                              showTitles: true,
                              getTitlesWidget: (value, meta) {
                                switch (value.toInt()) {
                                  case 0:
                                    return const Text('20', style: TextStyle(color: kChartDataColor,fontSize: 9));
                                  case 1:
                                    return const Text('25', style: TextStyle(color: kChartDataColor,fontSize: 9));
                                  case 2:
                                    return const Text('1', style: TextStyle(color: kChartDataColor,fontSize: 9));
                                  default:
                                    return const SizedBox.shrink();
                                }
                              },
                            ),
                          ),
                        ),
                        gridData: FlGridData(show: false),
                        borderData: FlBorderData(show: false),
                        lineBarsData: [
                          LineChartBarData(
                            spots: dataPoints,
                            isCurved: true,
                            color: kPrimaryColor,
                            barWidth: 3,
                            dotData: FlDotData(show: true),
                            belowBarData: BarAreaData(
                              show: true,
                              color: Colors.red.withValues(alpha: 0.2),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

