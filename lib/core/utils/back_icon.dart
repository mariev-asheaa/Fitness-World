import 'package:flutter/material.dart';

class BackIcon extends StatelessWidget {
  const BackIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.pop(context);
      },
      child: Container(
        padding: const EdgeInsets.only(left: 5),
        width: 32,
        height: 32,
        decoration: ShapeDecoration(
          color: const Color(0xFFF7F8F8),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
          ),
        ),
        child: const Center(child: Icon(Icons.arrow_back_ios,size: 16,)),
      ),
    );
  }
}
