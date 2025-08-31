import 'package:fitness_app/Features/Packages/presentation/widgets/packages_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PackagesView extends StatelessWidget {
  const PackagesView({super.key});
static const routeName='packageView';
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: PackagesBody()
      ),
    );
  }
}
