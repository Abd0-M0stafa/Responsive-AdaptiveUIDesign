import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposive/widgets/tranaction_history_header.dart';
import 'package:resposive/widgets/transaction_history_list_view.dart';

class TransactionHistorySection extends StatelessWidget {
  const TransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        TranactionHistoryHeader(),
        SizedBox(
          height: 8,
        ),
        TransactionHistoryListView(),
      ],
    );
  }
}
