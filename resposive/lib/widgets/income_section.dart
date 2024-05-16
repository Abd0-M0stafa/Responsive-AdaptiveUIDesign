import 'package:flutter/material.dart';
import 'package:resposive/widgets/icome_chart.dart';
import 'package:resposive/widgets/income_details.dart';
import 'package:resposive/widgets/income_header.dart';

class IncomeSection extends StatelessWidget {
  const IncomeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: const Column(
        children: [
          IncomeHeader(),
          SizedBox(
            height: 15,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(flex: 1, child: IcomeChart()),
              SizedBox(
                width: 10,
              ),
              Expanded(flex: 2, child: IncomeDetails()),
            ],
          ),
        ],
      ),
    );
  }
}
