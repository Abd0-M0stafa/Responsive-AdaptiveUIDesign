import 'package:flutter/material.dart';
import 'package:resposive/models/income_details_model.dart';
import 'package:resposive/utils/app_styles.dart';

class IncomeItem extends StatelessWidget {
  const IncomeItem({super.key, required this.model});

  final IncomeDetailsModel model;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      horizontalTitleGap: 0,
      leading: Container(
        width: 12,
        height: 12,
        decoration: ShapeDecoration(
          shape: const OvalBorder(),
          color: model.color,
        ),
      ),
      title: Text(
        model.title,
        style: AppStyles.styleRegular16(context),
      ),
      trailing: Text(
        model.trailing,
        style: AppStyles.styleMediam16(context),
      ),
    );
  }
}
