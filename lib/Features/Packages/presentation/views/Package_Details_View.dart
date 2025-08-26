import 'package:fitness_app/Features/Packages/presentation/widgets/Package_Details_Body.dart';
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
