import 'package:fitness_app/core/utiles/Back_Icon.dart';
import 'package:fitness_app/core/utiles/Constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';
import '../../../../generated/assets.dart';
import 'Payment_Container.dart';

class PackageDetailsBody extends StatelessWidget {
  const PackageDetailsBody({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>packageDetails=[
     'All limited links',
      'Own analytics platform',
      'Chat support',
      'Optimize hashtags',
      'Unlimited users',
    ];
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 37),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: BackIcon(),
          ),
          Text(
            'Package details',
            style: Styles.styleW70032(context)
            ),
          Row(

            children: [
              Text(
                 '1499',
                style:Styles.styleW70049(context).copyWith(fontSize: 40,color: kPrimaryColor)
              ),
              Text(
                ' LE',
                style: Styles.styleW70018(context).copyWith(color: kPrimaryColor)
              ),
              SizedBox(width: 10,),
              Text(
                '4000 LE',
                style: Styles.styleW70018(context).copyWith(decoration: TextDecoration.lineThrough,)
              ),
              Expanded(child: SizedBox()),
              Container(
                width: 88,
                height: 22,
                decoration: ShapeDecoration(
                  color: kPrimaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(13.50),
                  ),
                ),
                child: Center(
                  child: Text(
                    'MOST POPULAR',
                    style: Styles.styleW70013(context).copyWith(fontSize: 7,color: Colors.white)
                  ),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 22,bottom: 3),
            child: Text(
              '90-days transformation package',
              style: Styles.styleW70016(context).copyWith(color: kPrimaryColor)
            ),
          ),
          Text(
            '3 months gold',
            style: Styles.styleW40014(context).copyWith(color: kPrimaryColor)
          ),
          Padding(
            padding: const EdgeInsets.only(top: 9,bottom: 12),
            child: Text(
              'For most businesses that want to otpimize\n web queries.',
              style:  Styles.styleW40014(context)
            ),
          ),

          SizedBox(
            height: MediaQuery.sizeOf(context).height*.28,
            child: ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (BuildContext context, int index) {
                return Row(
                  children: [
                    Container(
                       height: 15.44,
                        width: 15,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          color: Color(0xffE5E5E5),
                          borderRadius: BorderRadius.circular(16)
                        ),
                        child: Icon(Icons.check,size: 12,)
                    ),
                    SizedBox(width: 14,),
                    Flexible(
                      child: Text(
                          packageDetails[index],
                          maxLines: 2,
                          style:Styles.styleW40014(context)
                      ),
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index)=>SizedBox(height: 9,),
              itemCount: packageDetails.length,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 13),
            child: PaymentContainer(color: Color(0xff006D95), icon: Assets.iconsFawry, text: 'Checkout by fawry'),
          ),
          PaymentContainer(color: Color(0xff635BFF), icon: Assets.iconsStrip, text: 'Checkout by stripe'),

        ],
      ),
    );
  }
}
