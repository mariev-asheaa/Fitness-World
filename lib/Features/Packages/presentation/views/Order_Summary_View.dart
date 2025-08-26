import 'package:fitness_app/Features/Packages/presentation/widgets/Order_Summary_Body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';
import '../../../../core/utiles/Back_Icon.dart';

class OrderSummaryView extends StatelessWidget {
  const OrderSummaryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackIcon(),
        centerTitle: true,
        backgroundColor: Colors.white,
        title: Text(
          'Order summary',
          style: Styles.styleW70032(context),
        ),
      ),
      body: SafeArea(child: OrderSummaryBody()),
    );
  }
}
