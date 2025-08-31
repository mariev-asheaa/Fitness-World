import 'package:fitness_app/Features/Packages/presentation/widgets/payment_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../generated/assets.dart';

class PaymentMethods extends StatelessWidget {
  const PaymentMethods({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 192,
      decoration: BoxDecoration(
        color: Colors.white.withValues(alpha: 0.76),
      ),
       child: Padding(
         padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 27),
         child: Column(
              children: [
               Padding(
                 padding: const EdgeInsets.only(bottom: 13),
                 child: PaymentContainer(color: Color(0xff006D95), icon: Assets.iconsFawry, text: 'Checkout by fawry'),
               ),
               PaymentContainer(color: Color(0xff635BFF), icon: Assets.iconsStrip, text: 'Checkout by stripe'),

              ],
         ),
       ),
    );
  }
}
