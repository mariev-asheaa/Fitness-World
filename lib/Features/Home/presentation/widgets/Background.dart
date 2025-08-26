import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Background extends StatelessWidget {
  const Background({super.key, required this.child});
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal:26,vertical: 10),
        child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 21),
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
              color: Colors.white,
              shape: RoundedRectangleBorder(
              side: BorderSide(
              width: 1,
              color: Colors.black.withValues(alpha: 0.11),
              ),
              borderRadius: BorderRadius.circular(20),
              ),
              ),
              child:child
              ),
    );
  }
}
