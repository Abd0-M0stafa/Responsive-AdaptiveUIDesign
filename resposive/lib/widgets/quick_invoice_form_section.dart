import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resposive/widgets/titled_text_field.dart';

class QuickInvoieFormSection extends StatelessWidget {
  const QuickInvoieFormSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Expanded(
              child: TitledTextField(
                title: 'Customer First Name',
                hintText: 'Enter your First name here',
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TitledTextField(
                title: 'Customer second Name',
                hintText: 'Enter your second name here',
              ),
            ),
          ],
        ),
        SizedBox(
          height: 20,
        ),
        Row(
          children: [
            Expanded(
              child: TitledTextField(
                title: 'Governorate',
                hintText: 'Enter your Governorate here',
              ),
            ),
            SizedBox(
              width: 15,
            ),
            Expanded(
              child: TitledTextField(
                title: 'Customer phone number',
                hintText: 'Enter your phone number',
              ),
            ),
          ],
        ),
      ],
    );
  }
}
