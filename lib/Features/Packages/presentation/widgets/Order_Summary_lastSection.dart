import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';

class OrderSummaryLastsection extends StatelessWidget {
  const OrderSummaryLastsection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 34),
          child: Text(
              'Order Summary',
              style: Styles.styleW70022(context)
          ),
        ),
        Text(
            'My plan',
            style:  Styles.styleW40014(context).copyWith(color: const Color(0xFF0C1A30),)
        ),
        Container(
          width: double.infinity,
          height: 50,
          decoration: ShapeDecoration(
            color: const Color(0xFFFAFAFA),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                    '6 Month',
                    style:Styles.styleW50014(context).copyWith(color: const Color(0xFF0C1A30),)
                ),
                Icon(Icons.keyboard_arrow_down)
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 37,bottom: 16),
          child: Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text: 'Total for payment in 6 months ',
                  style: Styles.styleW70016(context)
                ),
                TextSpan(
                  text: '4000 LE',
                  style:  Styles.styleW70016(context).copyWith(color: kPrimaryColor)
                ),
              ],
            ),
          ),
        ),
        Container(
          width: double.infinity,
          height: 39,
          decoration: ShapeDecoration(
            color: const Color(0xFFF8D0C9),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 22,right: 16),
                child: Text(
                  '6 months',
                  style: Styles.styleW50014(context).copyWith(color:kPrimaryColor)
                ),
              ),
              Text(
                'You won’t pay until Nov 12,2022',
                style: Styles.styleW50012(context).copyWith(color:kPrimaryColor)
              ),
            ],
          ),
        )
      ],
    );
  }
}
