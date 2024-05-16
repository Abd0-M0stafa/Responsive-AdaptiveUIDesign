import 'package:flutter/material.dart';
import 'package:resposive/utils/app_styles.dart';

class IncomeHeader extends StatelessWidget {
  const IncomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Income',
          style: AppStyles.stylesemiBold20(context),
        ),
        const Spacer(),
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
