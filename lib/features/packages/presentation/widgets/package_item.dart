import 'package:fitness_app/Features/Packages/models/package_item_model.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/active_and_inactive_package_Item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key, required this.isActive, required this.packageItemModel});
final bool isActive;
final PackageItemModel packageItemModel;
  @override
  Widget build(BuildContext context) {
    return isActive?ActivePackageItem(packageItemModel: packageItemModel,):InactivePackageItem(packageItemModel: packageItemModel,);
  }
}
