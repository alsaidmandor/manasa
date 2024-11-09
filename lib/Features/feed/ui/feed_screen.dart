import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/Features/feed/ui/widget/profile_completion_widget.dart';
import 'package:manasa/core/helper/spacing.dart';
import 'package:manasa/core/theme/styles.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/icon_moon.dart';
import '../../../generated/l10n.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        centerTitle: false,
        title: Column(
          children: [
            Text(S.of(context).start_message_home),
            verticalSpace(5.h),
            Text(
              S.of(context).subtitle_message_home,
              style: TextStyles.fontBody14BlackRegular
                  .copyWith(color: AppColor.mainBlack20),
            ),
          ],
        ),

        actions: [
        //   circle image profile to click to go to profile screen
          IconButton(
            onPressed: () {},
            icon: ProfileCompletionWidget(completionPercentage: 0.5,)
          ),
          horizontalSpace(10.w),
          Padding(
            padding:  EdgeInsets.only(left: 18.w),
            child: IconButton(
              onPressed: () {

              },
              icon: Icon(IconMoon.notification),
            ),
          ),

        ],
      ),
      body: Center(
        child: Text('Feed Screen'),
      ),
    );
  }
}
