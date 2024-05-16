import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:resposive/utils/app_styles.dart';

class UserProfileListTile extends StatelessWidget {
  const UserProfileListTile({
    super.key,
    required this.image,
    required this.title,
    required this.subTitle,
  });

  final String image, title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Card(
      color: const Color.fromARGB(255, 241, 240, 240),
      elevation: 0,
      child: ListTile(
        leading: SvgPicture.asset(image),
        title: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            title,
            style: AppStyles.stylesemiBold16(context),
          ),
        ),
        subtitle: FittedBox(
          alignment: AlignmentDirectional.centerStart,
          fit: BoxFit.scaleDown,
          child: Text(
            subTitle,
            style: AppStyles.styleRegular12(context),
          ),
        ),
      ),
    );
  }
}
