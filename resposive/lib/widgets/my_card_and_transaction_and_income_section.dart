import 'package:flutter/material.dart';
import 'package:resposive/widgets/income_section.dart';
import 'package:resposive/widgets/my_card_section.dart';
import 'package:resposive/widgets/transaction_history_section.dart';

class MyCardAndTransactionAndIncomeSection extends StatelessWidget {
  const MyCardAndTransactionAndIncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: const Column(
            children: [
              MyCardSection(),
              SizedBox(
                height: 20,
              ),
              TransactionHistorySection(),
            ],
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const IncomeSection(),
      ],
    );
  }
}
