import 'package:flutter/material.dart';
import 'package:resposive/models/all_expenses_item_model.dart';
import 'package:resposive/utils/app_images.dart';
import 'package:resposive/widgets/all_expenses_item.dart';

class AllExpensesItemsList extends StatefulWidget {
  const AllExpensesItemsList({super.key});

  @override
  State<AllExpensesItemsList> createState() => _AllExpensesItemsListState();
}

class _AllExpensesItemsListState extends State<AllExpensesItemsList> {
  bool isActive1 = true;
  bool isActive2 = false;
  bool isActive3 = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isActive1 = true;
              });
              isActive2 = false;
              isActive3 = false;
            },
            child: AllExpensesItem(
              isActive: isActive1,
              itemModel: const AllExpensesItemModel(
                  image: AppImages.wallet,
                  title: 'Balance',
                  date: 'April 2022',
                  price: r'$33,786'),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isActive2 = true;
              });
              isActive1 = false;
              isActive3 = false;
            },
            child: AllExpensesItem(
              isActive: isActive2,
              itemModel: const AllExpensesItemModel(
                  image: AppImages.wallet,
                  title: 'Income',
                  date: 'April 2022',
                  price: r'$20,123'),
            ),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: GestureDetector(
            onTap: () {
              setState(() {
                isActive3 = true;
              });
              isActive1 = false;
              isActive2 = false;
            },
            child: AllExpensesItem(
              isActive: isActive3,
              itemModel: const AllExpensesItemModel(
                  image: AppImages.wallet,
                  title: 'Expenses',
                  date: 'April 2022',
                  price: r'$98,25'),
            ),
          ),
        ),
      ],
    );
  }
}
