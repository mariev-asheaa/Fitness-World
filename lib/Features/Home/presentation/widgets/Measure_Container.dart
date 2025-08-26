import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';

class MeasureContainer extends StatelessWidget {
  const MeasureContainer({super.key, required this.title, required this.subTitle, required this.image, this.trailingImage});
final String title,subTitle,image;
final Widget? trailingImage;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            color: const Color(0xFFEAECF0),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x0F222C5C),
            blurRadius: 68,
            offset: Offset(58, 26),
            spreadRadius: 0,
          ),
        ],
      ),
      child:ListTile(
        leading: Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: Image.asset(image),
        ),
        title: Text(
          title,
          style: Styles.styleW50014(context)
        ),
        subtitle: Text(subTitle,
          style:  Styles.styleW50012(context).copyWith(color:Color(0xFF9A9C95),)
        ),
        trailing:Padding(
          padding: const EdgeInsets.only(bottom: 12),
          child: trailingImage,
        ),
      )
    );
  }
}
