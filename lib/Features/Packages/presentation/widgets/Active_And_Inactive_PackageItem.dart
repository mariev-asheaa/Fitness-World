import 'package:fitness_app/Features/Packages/models/Package_Item_Model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Constants.dart';

class ActivePackageItem extends StatelessWidget {
  const ActivePackageItem({super.key, required this.packageItemModel});
final PackageItemModel packageItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 86,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignOutside,
            color: const Color(0xFFEF4123),
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(6),
        child: Container(
          height: 74,
          decoration: ShapeDecoration(
            color: const Color(0xFFFFF1EF),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal:11,vertical: 15),
            child: Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: ShapeDecoration(
                    color: const Color(0x4CEF4123),
                    shape: OvalBorder(
                      side: BorderSide(
                        width: 6,
                        color:kPrimaryColor,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          packageItemModel.name,
                          style: Styles.styleW70016(context).copyWith(color: Color(0xFF333333))
                      ),
                      Text(
                         packageItemModel.duration,
                          style: Styles.styleW40012(context)
                      ),
                    ],
                  ),
                ),
                Expanded(child: SizedBox()),
                Column(
                  children: [
                    Text(
                        '${packageItemModel.price} LE',
                        textAlign: TextAlign.right,
                        style: Styles.styleW70016(context).copyWith(color: Color(0xFF333333))
                    ),
                    Text(
                        '${packageItemModel.offer} LE',
                        style: Styles.styleW70013(context).copyWith(
                          color: Colors.black.withValues(alpha: 0.55),
                          decoration: TextDecoration.lineThrough,
                        )
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
class InactivePackageItem extends StatelessWidget {
  const InactivePackageItem({super.key, required this.packageItemModel});
final PackageItemModel packageItemModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74,
      decoration: ShapeDecoration(
        color: const Color(0xFFFAFAFA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal:16,vertical: 16),
        child: Row(
          children: [
            Container(
              width: 20,
              height: 20,
              decoration: ShapeDecoration(
                shape: OvalBorder(
                  side: BorderSide(
                    width: 1,
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                      packageItemModel.name,
                      style: Styles.styleW70016(context).copyWith(color: Color(0xFF333333))
                  ),
                  Text(
                      packageItemModel.duration,
                      style: Styles.styleW40012(context)
                  ),
                ],
              ),
            ),
            Expanded(child: SizedBox()),
            Column(
              children: [
                Text(
                    '${packageItemModel.price} LE',
                    textAlign: TextAlign.right,
                    style: Styles.styleW70016(context).copyWith(color: Color(0xFF333333))
                ),
                Text(
                    '${packageItemModel.offer} LE',
                    style: Styles.styleW70013(context).copyWith(
                      color: Colors.black.withValues(alpha: 0.55),
                      decoration: TextDecoration.lineThrough,
                    )
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
