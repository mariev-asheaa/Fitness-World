import 'package:flutter/material.dart';

import '../../../../core/utils/text_styles.dart';


class TasksAction extends StatelessWidget {
  const TasksAction({super.key,required this.icon, required this.text, required this.color});
final IconData icon;
final String text;
final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 68,
      child: Container(
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            side: const BorderSide(width: 1, color: Color(0xFFEAECF0)),
            borderRadius: BorderRadius.circular(16),
          ),
          shadows: const [
            BoxShadow(
              color: Color(0x0F222C5C),
              blurRadius: 68,
              offset: Offset(58, 26),
              spreadRadius: 0,
            )
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
             Icon(icon, color: color,size: 10,),
            Text(
              text,
              style: Styles.styleW50012(context).copyWith(color: const Color(0xFF9B9BA1)),
            ),
          ],
        ),
      ),
    );
  }
}
