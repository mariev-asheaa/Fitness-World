import 'package:fitness_app/Features/Packages/presentation/views/Order_Summary_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utiles/App_Styles.dart';

class PaymentContainer extends StatelessWidget {
  const PaymentContainer({super.key, required this.color, required this.icon, required this.text});
final Color color;
final String icon,text;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return OrderSummaryView();
          },
        ));
        },
      child: Container(
        width: double.infinity,
        height: 54,
        decoration: BoxDecoration(
            color:color,
            borderRadius: BorderRadius.circular(16)
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(icon,height: 26,),
            SizedBox(width: 16,),
            Text(
                text,
                textAlign: TextAlign.center,
                style: Styles.styleW70016(context).copyWith(color: Colors.white)
            ),
          ],
        ),
      ),
    );
  }
}
