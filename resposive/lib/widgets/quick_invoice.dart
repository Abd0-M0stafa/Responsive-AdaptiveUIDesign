import 'package:flutter/material.dart';
import 'package:resposive/widgets/action_buttons_section.dart';
import 'package:resposive/widgets/latest_transaction_section.dart';
import 'package:resposive/widgets/quick_invoice_form_section.dart';
import 'package:resposive/widgets/quick_invoice_header.dart';

class QuickInvoice extends StatelessWidget {
  const QuickInvoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuickInvoiceHeader(),
          SizedBox(
            height: 20,
          ),
          LatestTransactionSection(),
          Divider(
            height: 48,
          ),
          QuickInvoieFormSection(),
          SizedBox(
            height: 25,
          ),
          ActionButtonsSection(),
        ],
      ),
    );
  }
}
