import 'package:flutter/material.dart';
import 'package:resposive/utils/app_styles.dart';

class ActionButtonsSection extends StatelessWidget {
  const ActionButtonsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 243, 243, 243),
              ),
              onPressed: () {},
              child: Text(
                'Add more detais',
                style: AppStyles.styleRegular14(context),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 15,
        ),
        Expanded(
          child: SizedBox(
            height: 50,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xff4EB7F2),
              ),
              onPressed: () {},
              child: Text(
                'Send Money',
                style: AppStyles.styleWhiteRegular14(context),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
