import 'package:flutter/material.dart';
import 'package:resposive/utils/app_styles.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'All Expenses',
          style: AppStyles.stylesemiBold20(context),
        ),
        const Expanded(
          child: SizedBox(),
        ),
        Text(
          'Monthly',
          style: AppStyles.styleMediam16(context),
        ),
        const SizedBox(
          width: 16,
        ),
        Transform.rotate(
          angle: -1.57079633,
          child: const Icon(Icons.arrow_back_ios_new_outlined),
        ),
      ],
    );
  }
}
