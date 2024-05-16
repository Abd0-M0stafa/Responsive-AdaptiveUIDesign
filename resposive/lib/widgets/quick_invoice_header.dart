import 'package:flutter/material.dart';
import 'package:resposive/utils/app_styles.dart';

class QuickInvoiceHeader extends StatelessWidget {
  const QuickInvoiceHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Quick Invoice',
          style: AppStyles.stylesemiBold20(context),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.add,
              color: Color(0xff4EB7F2),
            ))
      ],
    );
  }
}
