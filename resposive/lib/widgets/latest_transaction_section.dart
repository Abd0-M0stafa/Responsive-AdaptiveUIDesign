import 'package:flutter/material.dart';
import 'package:resposive/utils/app_styles.dart';
import 'package:resposive/widgets/latest_transaction_list.dart';

class LatestTransactionSection extends StatelessWidget {
  const LatestTransactionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Latest Transaction',
          style: AppStyles.stylesemiBold16(context),
        ),
        const LatestTransactionList(),
      ],
    );
  }
}
