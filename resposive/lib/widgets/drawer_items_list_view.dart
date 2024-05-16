import 'package:flutter/material.dart';
import 'package:resposive/models/drawer_item_model.dart';
import 'package:resposive/utils/app_images.dart';
import 'package:resposive/widgets/drawer_item.dart';

class DrawerListView extends StatefulWidget {
  const DrawerListView({super.key});

  @override
  State<DrawerListView> createState() => _DrawerListViewState();
}

class _DrawerListViewState extends State<DrawerListView> {
  int activeIndex = 0;

  final List<DrawerItemModel> items = const [
    DrawerItemModel(image: AppImages.category, tilte: 'Dashboard'),
    DrawerItemModel(image: AppImages.convertCard, tilte: 'My Transactions'),
    DrawerItemModel(image: AppImages.graph, tilte: 'Statistics'),
    DrawerItemModel(image: AppImages.wallet, tilte: 'Wallet Account'),
    DrawerItemModel(image: AppImages.chart, tilte: 'My Investments'),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(top: 20),
          child: GestureDetector(
            onTap: () {
              if (activeIndex != index) {
                setState(() {
                  activeIndex = index;
                });
              }
            },
            child: DrawerItem(
              drawerItemModel: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
