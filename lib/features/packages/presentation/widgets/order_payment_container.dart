import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';


class OrderPaymentContainer extends StatelessWidget {
  const OrderPaymentContainer({super.key, required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.sizeOf(context).width*.4,
      decoration: ShapeDecoration(
        color: isActive? Color(0xFFFFF1EF):Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: isActive? Color(0xFFEF4123):Color(0xFFFAFAFA),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8,right: 16),
            child: Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                color: isActive? Color(0x4CEF4123):Color(0xFFDADADA),
                shape: OvalBorder(
                  side: BorderSide(
                    width: 6,
                    color: isActive? Color(0xFFEF4123):Color(0xFFEEEEEE),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: Text(
                'Payment Full\n Amount',
                style: Styles.styleW50014(context)
            ),
          ),
        ],
      ),
    );
  }
}
