import 'package:flutter/material.dart';
import 'package:resposive/models/transaction_history_model.dart';
import 'package:resposive/utils/app_styles.dart';

class TransactionHistoryItem extends StatelessWidget {
  const TransactionHistoryItem({super.key, required this.model});
  final TransactionHistoryModel model;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: const Color.fromARGB(255, 247, 247, 247),
          borderRadius: BorderRadius.circular(20),
        ),
        child: ListTile(
          title: Text(
            model.title,
            style: AppStyles.stylesemiBold16(context),
          ),
          subtitle: Text(
            model.subTitle,
            style: AppStyles.styleRegular16(context),
          ),
          trailing: Text(
            model.amount,
            style: AppStyles.stylesemiBold20(context).copyWith(
              color: model.isOff
                  ? const Color(0xfff3735e)
                  : const Color(0xff7cd87a),
            ),
          ),
        ),
      ),
    );
  }
}
