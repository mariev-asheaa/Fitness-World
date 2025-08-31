import 'package:fitness_app/Features/Packages/presentation/widgets/package_details_listview.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/package_item_listview.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/payment_methods.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Back_Icon.dart';

class PackagesBody extends StatelessWidget {
  const PackagesBody({super.key});

  @override
  Widget build(BuildContext context) {

    return Stack(
     children: [
       SingleChildScrollView(
         child: Padding(
           padding: const EdgeInsets.symmetric(horizontal: 30),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Padding(
                 padding: const EdgeInsets.only(top: 20,bottom: 21),
                 child: BackIcon(),
               ),
               Text(
                 'Get offer and\nsubscribe later',
                 style: Styles.styleW70032(context)
               ),
               SizedBox(height: 20,),
               Text(
                 'We believe that our app should inspire you to be the best version of you.',
                 style: Styles.styleW40016(context).copyWith(color: Color(0xFF838589))
               ),
               SizedBox(height: 30,),
               PackageItemListview(),
               Text(
                 'Package details',
                 style: Styles.styleW70022(context)
               ),
               SizedBox(height: 16,),
               PackageDetailsListview(),
             ],
           ),
         ),
       ),
       Positioned(
         bottom: 0,
           left: 0,
           right: 0,
           child: PaymentMethods()
       )
     ],
    );
  }
}
