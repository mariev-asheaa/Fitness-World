import 'package:fitness_app/Features/Packages/models/Package_Item_Model.dart';
import 'package:fitness_app/Features/Packages/presentation/widgets/Active_And_Inactive_PackageItem.dart';
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
