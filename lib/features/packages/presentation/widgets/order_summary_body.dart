import 'package:fitness_app/Features/Packages/presentation/widgets/order_button.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/order_payment_container.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/order_summary_lastSection.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/user_information.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';


class OrderSummaryBody extends StatefulWidget {
  const OrderSummaryBody({super.key});

  @override
  State<OrderSummaryBody> createState() => _OrderSummaryBodyState();
}

class _OrderSummaryBodyState extends State<OrderSummaryBody> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children:[
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 70,),
                UserInformation(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                      'Choose the suitable payment method for you',
                      style:  Styles.styleW40014(context).copyWith(color: const Color(0xFF0C1A30),)
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=0;
                          });
                        },
                        child: OrderPaymentContainer(isActive: selectedIndex==0,)),
                    SizedBox(width: 11,),
                    InkWell(
                        onTap: (){
                          setState(() {
                            selectedIndex=1;
                          });
                        },
                        child: OrderPaymentContainer(isActive: selectedIndex==1,)
                    )
                  ],
                ),
                OrderSummaryLastsection(),
                SizedBox(height: 250,)
              ],
            ),
          ),
        ),
        Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child:Container(
              decoration: BoxDecoration(
                color: Colors.white.withValues(alpha: 0.76),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 35,horizontal: 28),
                child: OrderButton()
                ),
              ),
            )
      ]
    );
  }
}
