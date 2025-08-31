import 'package:fitness_app/Features/Packages/presentation/widgets/package_details_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackageDetailsView extends StatelessWidget {
  const PackageDetailsView({super.key});
  static const routeName='packageDetailsView';
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(child: PackageDetailsBody()),
    );
  }
}
