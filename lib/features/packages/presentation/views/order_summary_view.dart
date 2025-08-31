import 'package:fitness_app/Features/Packages/presentation/widgets/order_summary_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';
import '../../../../core/utils/Back_Icon.dart';


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
