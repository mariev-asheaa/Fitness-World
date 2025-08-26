import 'package:fitness_app/Features/Home/presentation/widgets/Active_Inactive_Package_Name.dart';
import 'package:flutter/cupertino.dart';

class PackageName extends StatelessWidget {
  const PackageName({super.key, required this.isActive});
final bool isActive;
  @override
  Widget build(BuildContext context) {
    return isActive?ActivePackageName():InactivePackageName();
  }
}
