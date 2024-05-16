import 'package:flutter/material.dart';
import 'package:resposive/models/latest_transaction_mpdel.dart';
import 'package:resposive/utils/app_images.dart';
import 'package:resposive/widgets/latest_transation_item.dart';

class LatestTransactionList extends StatelessWidget {
  const LatestTransactionList({super.key});

  static const items = [
    LatestTransactionModel(
      image: AppImages.avatar1,
      tilte: 'Madrani Andi',
      subTilte: 'Madraniadi20@gmail',
    ),
    LatestTransactionModel(
      image: AppImages.avatar2,
      tilte: 'Josua Nunito',
      subTilte: 'Josh Nunito@gmail.com',
    ),
    LatestTransactionModel(
      image: AppImages.avatar1,
      tilte: 'Madrani Andi',
      subTilte: 'Madraniadi20@gmail',
    ),
    LatestTransactionModel(
      image: AppImages.avatar2,
      tilte: 'abdo mostafa',
      subTilte: 'abdo_mostafa66@gmail',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: LatestTransactionItem(
                    latestTransactionModel: e,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
