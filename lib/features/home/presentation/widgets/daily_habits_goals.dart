import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Constants.dart';
import '../../../../generated/assets.dart';

class DailyhabitsGoals extends StatelessWidget {
  const DailyhabitsGoals({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16),
      child: Container(
        height: 72,
        width: double.infinity,
        decoration: ShapeDecoration(
          color:kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 16),
          child: Row(
            children: [
              SizedBox(
                  height: 50,
                  child: SvgPicture.asset(Assets.iconsGroup2)
              ),
              SizedBox(width: 5,),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Your daily goals almost done! 🔥',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.styleW50014(context).copyWith(color: Colors.white)
                  ),
                  Text(
                    '1 of 4 completed',
                    style: Styles.styleW40012(context).copyWith(color: Color(0xFFFFC7BE))
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
