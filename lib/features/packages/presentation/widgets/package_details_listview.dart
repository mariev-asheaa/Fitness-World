import 'package:flutter/material.dart';
import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Constants.dart';

class PackageDetailsListview extends StatelessWidget {
  const PackageDetailsListview({super.key});

  @override
  Widget build(BuildContext context) {
    List<String>packageDetails=[
      'Establishing a healthy lifestyle.',
      'Customized nutrition plan and exercise schedule based on your body type, available time and equipment.',
      'Daily response to your inquiries from our medical and sports team.',
      'Customized nutrition program every 14 days.',
      'Boost your physical fitness through monthly programs for (cardio, resistance).',
      'Improve your flexibility.',
      'Achieve your best body form.',
      'Consider any injury.',
      'Monthly follow-up with statistics to modify plans.',
    ];
    return SizedBox(
      height: 500,
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        itemBuilder: (BuildContext context, int index) {
          return Row(
            children: [
              Icon(Icons.check_circle,color: kPrimaryColor,size: 16,),
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
    );
  }
}
