import 'package:fitness_app/Features/Packages/presentation/views/Packages_View.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';
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

class ActivePackageName extends StatelessWidget {
  const ActivePackageName({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26),
      child: Stack(
        children:[
          Container(
            width: MediaQuery.of(context).size.width - 52,
            height: 157,
            decoration: ShapeDecoration(
              color:kPrimaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 11),
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
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        spacing: 3,
                        children: [
                          Text(
                            'Package Name',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Helvetica Neue',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            'Joined on 10 Sep 2024',
                            style: TextStyle(
                              color: Colors.white.withValues(alpha: 0.66),
                              fontSize: 13,
                              fontFamily: 'Helvetica Neue',
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10,right: 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            height: 15,
                            child: Text(
                              'Joined on 20 Jul 2024',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 11,
                                fontFamily: 'Helvetica Neue',
                                fontWeight: FontWeight.w700,
                              ),
                            )
                        ),
                        Text(
                          '40 Days Left',
                          style:Styles.styleW50013(context).copyWith(
                            color: Colors.white.withValues(alpha: 0.66),
                            height: 1.85,)
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 15,top: 7),
                    child: LinearPercentIndicator(
                      padding: EdgeInsets.zero,
                      width: MediaQuery.sizeOf(context).width*.73,
                      lineHeight: 5,
                      percent: .4,
                      backgroundColor: const Color(0x56D9D9D9),
                      progressColor: Colors.white,
                      animation: true,
                      animationDuration: 1000,
                      barRadius: Radius.circular(10),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: InkWell(
              onTap: (){
                Navigator.push(context, MaterialPageRoute(
                  builder: (context) {
                    return PackagesView();
                  },
                ));
              },
              child: Container(
                height: 40,
                decoration: ShapeDecoration(
                  color: const Color(0xFFC5351C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16)
                    ),
                  ),
                ),
                child: Center(
                  child: Text(
                      'See Packages',
                      textAlign: TextAlign.center,
                      style: Styles.styleW50017(context).copyWith(color: Colors.white)
                  ),
                ),
              ),
            ),
          ),
        ]
      ),
    );
  }
}
