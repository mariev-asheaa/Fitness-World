import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Constants.dart';
import '../../../../generated/assets.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      color: Colors.white,
      height: 126,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 27,right: 10),
            child: SvgPicture.asset(Assets.imagesLogo),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'Welcome back,\n',
                      style: Styles.styleW70018(context)
                    ),
                    TextSpan(
                      text: 'Coach ',
                      style: Styles.styleW70018(context).copyWith(color: kPrimaryColor)
                    ),
                    TextSpan(
                      text: '👋',
                    ),
                  ],
                ),
              )
            ],
          ),
          Flexible(child: SizedBox(width: 150,)),
          SvgPicture.asset(Assets.iconsNotification),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: SvgPicture.asset(Assets.iconsVector),
          ),
        ],
      ),
    );
  }
}
