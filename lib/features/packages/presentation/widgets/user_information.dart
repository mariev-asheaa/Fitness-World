import 'package:flutter/cupertino.dart';
import '../../../../core/utils/text_styles.dart';
import 'custom_text_field.dart';

class UserInformation extends StatelessWidget {
  const UserInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
            'Your Information',
            style: Styles.styleW70022(context)
        ),
        Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20),
          child: Text(
              'You Name',
              style: Styles.styleW40014(context).copyWith(color: const Color(0xFF0C1A30),)
          ),
        ),
        CustomTextfield(text: 'Enter Your Name',),

        Padding(
          padding: const EdgeInsets.only(top: 30,bottom: 20),
          child: Text(
              'Phone Number',
              style: Styles.styleW40014(context).copyWith(color: const Color(0xFF0C1A30),)
          ),
        ),
        CustomTextfield(text: 'Enter you phone number',),
      ],
    );
  }
}
