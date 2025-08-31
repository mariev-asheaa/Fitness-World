import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key, required this.onTap});
final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 39,
        decoration: ShapeDecoration(
          color: kPrimaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(47),
          ),
        ),
        child: Center(
          child: Text(
            'Calculate Again',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 11,
              fontFamily: 'Helvetica Neue',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    );
  }
}
