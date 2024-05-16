import 'package:flutter/material.dart';
import 'package:resposive/widgets/all_expensses_and_quick_invoice_section.dart';
import 'package:resposive/widgets/custom_drawer.dart';
import 'package:resposive/widgets/my_card_and_transaction_and_income_section.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12, vertical: 16),
        child: Row(
          children: [
            Expanded(
              flex: 1,
              child: CustomDrawer(),
            ),
            SizedBox(
              width: 32,
            ),
            Expanded(
              flex: 5,
              child: CustomScrollView(
                slivers: [
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Row(
                      children: [
                        Expanded(
                          flex: 3,
                          child: AllExpenssesAndQuickInvoiceSection(),
                        ),
                        SizedBox(
                          width: 32,
                        ),
                        Expanded(
                          flex: 2,
                          child: MyCardAndTransactionAndIncomeSection(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
