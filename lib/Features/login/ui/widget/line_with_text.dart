import 'package:flutter/material.dart';

import '../../../../core/theme/app_color.dart';
import '../../../../generated/l10n.dart';

class LineWithText extends StatelessWidget {
  const LineWithText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Divider(
            color: AppColor.mainBlack20,
            thickness: 1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            S.of(context).or,
            style: TextStyle(color: AppColor.mainBlack20,),
          ),
        ),
        Expanded(
          child: Divider(
            color: AppColor.mainBlack20,
            thickness: 1,
          ),
        ),
      ],
    );
  }
}