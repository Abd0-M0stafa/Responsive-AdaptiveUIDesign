import 'package:flutter/material.dart';
import 'package:resposive/widgets/custom_drawer.dart';
import 'package:resposive/widgets/mobile_layout.dart';

class TabletLayout extends StatelessWidget {
  const TabletLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 232, 232),
      body: Padding(
        padding: EdgeInsets.only(left: 12, top: 16, bottom: 16, right: 25),
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
              flex: 3,
              child: MobileLayout(),
            ),
          ],
        ),
      ),
    );
  }
}
