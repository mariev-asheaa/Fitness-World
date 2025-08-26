import 'package:fitness_app/core/utiles/App_Styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/Constants.dart';

class SectionsHeader extends StatelessWidget {
  const SectionsHeader({super.key, required this.title, required this.seeMore, required this.onTap});
final String title,seeMore;
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: Styles.styleW70022(context)
          ),
          InkWell(
            onTap: onTap,
            child: Text(
              seeMore,
              textAlign: TextAlign.right,
              style: Styles.styleW50014(context).copyWith(color: kPrimaryColor)
            ),
          ),
        ],),
    );
  }
}
