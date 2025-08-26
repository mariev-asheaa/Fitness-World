import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../core/utiles/App_Styles.dart';

class CustomTextfield extends StatelessWidget {
  const CustomTextfield({super.key, required this.text});
final String text;
  @override
  Widget build(BuildContext context) {
    return  TextField(
      decoration: InputDecoration(
          fillColor: const Color(0xFFFAFAFA),
          filled: true,
          hintText: text,
          hintStyle: Styles.styleW50014(context).copyWith(color: const Color(0xFFB2B2B2),),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color:  Color(0xFFFAFAFA),
              )
          ),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color:  Color(0xFFFAFAFA),
              )
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: const BorderSide(
                color:  Color(0xFFFAFAFA),
              )
          )
      ),
    );
  }
}
