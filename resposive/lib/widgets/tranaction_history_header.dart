import 'package:flutter/material.dart';
import 'package:resposive/utils/app_styles.dart';

class TranactionHistoryHeader extends StatelessWidget {
  const TranactionHistoryHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Transaction History',
          style: AppStyles.stylesemiBold20(context),
        ),
        const Spacer(),
        TextButton(
          onPressed: () {},
          child: Text(
            'See all',
            style: AppStyles.styleMediam16(context),
          ),
        ),
      ],
    );
  }
}
