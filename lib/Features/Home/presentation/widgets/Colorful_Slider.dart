import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_sliders/sliders.dart';

class ColorScaleSlider extends StatefulWidget {
  const ColorScaleSlider({super.key});

  @override
  State<ColorScaleSlider> createState() => _ColorScaleSliderState();
}

class _ColorScaleSliderState extends State<ColorScaleSlider> {
  double _value = 25.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text('18.5', style: TextStyle(fontWeight: FontWeight.bold,color: kChartDataColor)),
            Text('25.0', style: TextStyle(fontWeight: FontWeight.bold,color: kChartDataColor)),
            Text('30.0', style: TextStyle(fontWeight: FontWeight.bold,color: kChartDataColor)),
          ],
        ),
    Stack(
        alignment: Alignment.center,
        children: [
        // Background gradient track
    Container(
            height: 4,
            decoration: BoxDecoration(
            gradient: LinearGradient(
            colors: [
        Color(0xff4B45ED),
        kGreen,
        Color(0xffFEBB0E),
        Color(0xffEA0D0D),
             ],
        ),
        borderRadius: BorderRadius.circular(2),
        ),
        ),
        SfSlider(
        min: 10.0,
        max: 40.0,
        value: _value,
        interval: 5,
        showLabels: true,
        activeColor: Colors.transparent,
        inactiveColor: Colors.transparent,
        thumbIcon: Container(
        decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.green, width: 2),
        color: Colors.white,
        ),
        ),
        onChanged: (dynamic newValue) {
        setState(() {
        _value = newValue;
        }
        );
        },
        ),
        ],
        )
      ],
    );
  }
}
