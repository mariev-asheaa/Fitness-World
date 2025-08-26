import 'package:fitness_app/Features/Home/presentation/widgets/Colorful_Slider.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';

class BmiBodymetrics extends StatelessWidget {
  const BmiBodymetrics({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('BMI',style: TextStyle(
          fontSize: 14,
          fontFamily: 'Helvetica Neue',
          fontWeight: FontWeight.w700,
        ),),
        Text.rich(
          TextSpan(
            children: [
              TextSpan(
                text: '24,0',
                style: TextStyle(
                  color:kGreen,
                  fontSize: 14,
                  fontFamily: 'Helvetica Neue',
                  fontWeight: FontWeight.w400,
                ),
              ),
              TextSpan(
                text: ' (Normal)',
                style: TextStyle(
                  color:kGreen,
                  fontSize: 14,
                  fontFamily: 'Helvetica Neue',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
        ),
        ColorScaleSlider(),
        Padding(
          padding: const EdgeInsets.only(top: 12),
          child: SizedBox(
            width: 313,
            child: Text(
              'BMI : weight (kg)/height (m)².\n\nYou can’t judge if you’re “obese” just by BMI value. People can have more fat than muscle with normal BMI and still classify as obese.',
              style: TextStyle(
                color:kChartDataColor,
                fontSize: 9,
                fontFamily: 'Helvetica Neue',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        )
      ],
    );
  }
}
