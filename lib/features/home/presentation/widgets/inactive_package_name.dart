import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../../core/utils/Constants.dart';
import '../../../../generated/assets.dart';

class InactivePackageName extends StatelessWidget {
  const InactivePackageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Container(
        width: 362,
        height: 68,
          decoration: ShapeDecoration(
            color:kPrimaryColor,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(16),
      ),
          ),
        child: Row(
          children: [
          Padding(
            padding: const EdgeInsets.only(left: 22),
            child: Container(
            width: 41,
            height: 41,
            decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(9)),
            ),
                child: SvgPicture.asset( Assets.iconsVector2,fit: BoxFit.scaleDown,)
            ),
          ),
            Padding(
              padding: const EdgeInsets.only(left: 11),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 3,
                children: [
                  SizedBox(
                    height: 18,
                    child: Text(
                      'Package Name',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontFamily: 'Helvetica Neue',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 15,
                    child: Text(
                    'Joined on 10 Sep 2024',
                      style: TextStyle(
                        color: Colors.white.withValues(alpha: 0.66),
                        fontSize: 13,
                        fontFamily: 'Helvetica Neue',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Padding(
              padding: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(Assets.iconsGroup),
            )
          ],
        ),
      ),
    );
  }
}
