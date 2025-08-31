import 'package:fitness_app/generated/assets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Constants.dart';


class OrderButton extends StatelessWidget {
  const OrderButton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        showModalBottomSheet(
          context: context,
          backgroundColor: Colors.white,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          ),
          builder: (BuildContext context) {
            return SizedBox(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(left: 30,right: 30,top: 54),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(Assets.imagesMobile,height: 90,),
                    Text(
                      'Congratulations',
                      style: Styles.styleW70032(context),
                    ),
                    Text(
                      'You successfuly paid for',
                      style: Styles.styleW40014(context).copyWith(fontSize: 24,color:  Color(0xFF4C4C4C),)
                    ),
                    Text(
                        'your program.',
                        style: Styles.styleW40014(context).copyWith(fontSize: 24,color:  Color(0xFF4C4C4C),)
                    ),
                     Expanded(child: SizedBox()),
                    Container(
                      height: 54,
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kPrimaryColor,
                          borderRadius: BorderRadius.circular(8)
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: Text(
                            'Explore SST',
                            textAlign: TextAlign.center,
                            style:Styles.styleW70016(context).copyWith(color: Colors.white)
                        ),
                      ),
                    ),
                    SizedBox(height: 16,)
                  ],
                ),
              ),
            );
          },
        );

      },
      child: Container(
        height: 54,
        width: double.infinity,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8)
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16),
          child: Text(
            'Subscribe Now',
            textAlign: TextAlign.center,
            style:Styles.styleW70016(context).copyWith(color: Colors.white)
          ),
        ),
      ),
    );
  }
}
