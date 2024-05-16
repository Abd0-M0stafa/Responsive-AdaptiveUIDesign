import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resposive/utils/app_styles.dart';
import 'package:resposive/widgets/custom_text_field.dart';

class TitledTextField extends StatelessWidget {
  const TitledTextField(
      {super.key, required this.title, required this.hintText});

  final String title;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.stylesemiBold16(context),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        CustomTextField(hintText: hintText)
      ],
    );
  }
}
