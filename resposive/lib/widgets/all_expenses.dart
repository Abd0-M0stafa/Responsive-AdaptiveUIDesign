import 'package:flutter/material.dart';
import 'package:resposive/widgets/all_expenses_header.dart';
import 'package:resposive/widgets/all_expenses_items_list.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsList(),
        ],
      ),
    );
  }
}
