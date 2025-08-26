import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Chart extends StatelessWidget {
  const Chart({super.key});

  @override
  Widget build(BuildContext context) {
    final List<FlSpot> ageSpots = [
      FlSpot(0, 26),
      FlSpot(1, 27),
      FlSpot(2, 26),
      FlSpot(3, 27),
    ];

    return SizedBox(
      height: MediaQuery.sizeOf(context).height * .2,
      child: Row(
        children: [
          SizedBox(
            width: 30,
            child: Padding(
              padding: const EdgeInsets.only(bottom:25),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('29', style: TextStyle(color: kChartDataColor,fontSize: 12)),
                  Text('27', style: TextStyle(color: kChartDataColor,fontSize: 12)),
                  Text('25', style: TextStyle(color: kChartDataColor,fontSize: 12)),
                ],
              ),
            ),
          ),
          // Scrollable chart
          Expanded(
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: const EdgeInsets.only(right: 35,left: 35),
                child: SizedBox(
                  width: 640,
                  child: LineChart(
                    LineChartData(
                      lineTouchData: LineTouchData(enabled: true),
                      clipData: FlClipData.none(),
                      minY: 25,
                      maxY: 29,
                      titlesData: FlTitlesData(
                        leftTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        rightTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        topTitles: AxisTitles(
                          sideTitles: SideTitles(showTitles: false),
                        ),
                        bottomTitles: AxisTitles(
                          sideTitles: SideTitles(
                            showTitles: true,
                            reservedSize: 40,
                            getTitlesWidget: (value, meta) {
                              if (value == 0) {
                                return const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '14 Mar',
                                    style: TextStyle(color: kChartDataColor,fontSize: 9),
                                  ),
                                );
                              } if (value == 1) {
                                return const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text(
                                    '13 Apr',
                                    style: TextStyle(color:kChartDataColor,fontSize: 9),
                                  ),
                                );
                              }
                              else {
                                return const Text('');
                              }
                            },
                          ),
                        ),
                      ),
                      borderData: FlBorderData(show: false),
                      gridData: FlGridData(show: false),
                      extraLinesData: ExtraLinesData(
                        horizontalLines: [
                          HorizontalLine(
                            y: 27.0,
                            color: Colors.red,
                            strokeWidth: 2,
                            dashArray: [5, 5],
                          ),
                        ],
                      ),
                      lineBarsData: [
                        LineChartBarData(
                          spots: ageSpots,
                          isCurved: true,
                          color: const Color(0xFFDFE5EE),
                          dotData: FlDotData(
                            show: true,
                            getDotPainter: (spot, percent, barData, index) =>
                                FlDotCirclePainter(
                                  radius: 4,
                                  color: kPrimaryColor,
                                  strokeWidth: 0,
                                  strokeColor: Colors.transparent,
                                ),
                          ),
                          belowBarData: BarAreaData(show: false),
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
    );
  }
}
