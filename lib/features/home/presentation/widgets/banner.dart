import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Constants.dart';
import '../../../../generated/assets.dart';


class BannerCard extends StatelessWidget {
  const BannerCard({super.key, required this.title, required this.image});
final String title,image;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 276,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(18),
        ),
      ),
      child: Stack(
        children: [
          Positioned.fill(
            child: Image.network(
              image,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) {
                return  Image.asset(Assets.imagesArticle,fit: BoxFit.cover,);
              },
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Padding(
                 padding: const EdgeInsets.only(top: 32,left: 25,right: 65,bottom: 10),
                 child: Text(title,style: Styles.styleW70022(context).copyWith(color: Colors.white),
                   maxLines: 2,
                   overflow: TextOverflow.ellipsis,
                   softWrap: true,
                 ),
               ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Container(
                  decoration: BoxDecoration(
                    color:Colors.black,
                    borderRadius: BorderRadius.circular(6)
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        'Start Now',
                        style: Styles.styleW70013(context).copyWith(color: kPrimaryColor)
                      ),
                      Icon(Icons.arrow_forward,color: kPrimaryColor,size: 18,),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
