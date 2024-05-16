import 'package:flutter/material.dart';
import 'package:resposive/widgets/all_expenses.dart';
import 'package:resposive/widgets/quick_invoice.dart';

class AllExpenssesAndQuickInvoiceSection extends StatelessWidget {
  const AllExpenssesAndQuickInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        AllExpenses(),
        SizedBox(
          height: 16,
        ),
        QuickInvoice(),
      ],
    );
  }
}
