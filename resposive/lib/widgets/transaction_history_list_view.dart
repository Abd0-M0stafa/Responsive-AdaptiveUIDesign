import 'package:flutter/material.dart';
import 'package:resposive/models/transaction_history_model.dart';
import 'package:resposive/widgets/transaction_history_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});

  static const items = [
    TransactionHistoryModel(
      title: 'Cash Withdrawal',
      subTitle: '13 Apr, 2022',
      amount: r'$20,129',
      isOff: true,
    ),
    TransactionHistoryModel(
      title: 'Landing Page project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$2,000',
      isOff: false,
    ),
    TransactionHistoryModel(
      title: 'Juni Mobile App project',
      subTitle: '13 Apr, 2022 at 3:30 PM',
      amount: r'$20,129',
      isOff: false,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: items
          .map((e) => TransactionHistoryItem(
                model: e,
              ))
          .toList(),
    );
  }
}
