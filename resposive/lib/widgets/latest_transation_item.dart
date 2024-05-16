import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive/models/latest_transaction_mpdel.dart';
import 'package:resposive/utils/app_styles.dart';

class LatestTransactionItem extends StatelessWidget {
  const LatestTransactionItem({
    super.key,
    required this.latestTransactionModel,
  });

  final LatestTransactionModel latestTransactionModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 241, 240, 240),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(latestTransactionModel.image),
        title: Text(
          latestTransactionModel.tilte,
          style: AppStyles.stylesemiBold16(context),
        ),
        subtitle: Text(
          latestTransactionModel.subTilte,
          style: AppStyles.styleRegular12(context),
        ),
      ),
    );
  }
}
