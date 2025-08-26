import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';

class SectionDivider extends StatelessWidget {
  const SectionDivider({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Text(
          text,
          style: Styles.styleW50017(context).copyWith(color: const Color(0xFFA09DB5)),
        ),
        const SizedBox(width: 8),
        const Expanded(
          child: Divider(
            color: Color(0xFFDFE5EE),
          ),
        ),
      ],
    );
  }
}
