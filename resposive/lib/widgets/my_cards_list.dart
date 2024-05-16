import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:resposive/widgets/my_card_item.dart';

class MyCardsList extends StatelessWidget {
  const MyCardsList({super.key, required this.pageController});

  final PageController pageController;

  @override
  Widget build(BuildContext context) {
    return ExpandablePageView(
      controller: pageController,
      children: List.generate(
        3,
        (index) => const MyCardItem(),
      ),
    );
  }
}
