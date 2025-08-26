import 'package:fitness_app/core/utiles/App_Styles.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Assessment extends StatelessWidget {
  const Assessment({super.key, required this.width, required this.height, required this.widget});
final double width,height;
final Widget widget;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Container(
        width: double.infinity,
        height: 82,
        padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 5),
        decoration: ShapeDecoration(
          color: Colors.black,
          shape: RoundedRectangleBorder(
            side: BorderSide(
              width: 1,
              color: const Color(0xFFEAECF0),
            ),
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Assessment',
              style: Styles.styleW40012(context).copyWith(color: kPrimaryColor)
            ),
            Row(
              children: [
                Text(
                  'Assessment Name',
                  style: Styles.styleW50012(context).copyWith(color: Colors.white)
                ),
                Icon(Icons.arrow_forward_ios,color: Colors.white,size: 10,),
                Expanded(child: SizedBox()),
           Container(
              width: width,
              height:height,
          decoration: ShapeDecoration(
            color: kPrimaryColor,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          ),
             child: Center(
               child: widget
             ),
        ),
              ],
            ),
            Text(
              'Last Update 10 Apr',
              style:Styles.styleW40012(context).copyWith(color: Color(0xFF667085))
            )
          ],
        ),
      ),
    );
  }
}
