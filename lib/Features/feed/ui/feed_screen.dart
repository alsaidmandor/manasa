import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/Features/feed/ui/widget/profile_completion_widget.dart';
import 'package:manasa/core/helper/extensions.dart';
import 'package:manasa/core/helper/spacing.dart';
import 'package:manasa/core/theme/styles.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/icon_moon.dart';
import '../../../core/widget/app_text_form_field.dart';
import '../../../generated/l10n.dart';

class FeedScreen extends StatelessWidget {
  const FeedScreen({super.key});



  @override
  Widget build(BuildContext context) {
    List<String> categories = [
      S.of(context).development,
      S.of(context).business,
      S.of(context).marketing,
      S.of(context).design,
      S.of(context).Photography,
      S.of(context).health_fitness,
      S.of(context).Music,
    ];

    List<IconData> icons = [
      Icons.code ,
      Icons.business,
      Icons.campaign,
      Icons.design_services,
      Icons.camera_alt,
      Icons.fitness_center,
      Icons.music_note,
    ];

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
                icon: ProfileCompletionWidget(
                  completionPercentage: 0.5,
                )),
            horizontalSpace(10.w),
            Padding(
              padding: EdgeInsets.only(left: 18.w),
              child: IconButton(
                onPressed: () {},
                icon: Icon(IconMoon.notification),
              ),
            ),
          ],
        ),
        body: Container(
          width: context.width.w,
          margin: EdgeInsetsDirectional.fromSTEB(25.w, 18.h, 20.w, 18.h),
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Form(
                  child: AppTextFormField(
                    controller: null,
                    prefixIcon: Icon(
                      IconMoon.search,
                    ),
                    hintText: S.of(context).search_courses,
                    validator: (String? value) {},
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: SizedBox(
                  height: 80.h,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: categories.length,
                    padding: EdgeInsets.only(  top: 30.h , bottom: 10.h),
                    physics: BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return Container(
                        height: 45.h,
                        padding: EdgeInsets.symmetric(horizontal: 5),
                        margin: EdgeInsets.only(right: index == 0 ? 0 :10.w),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.r),
                            border: Border.all(
                              color: AppColor.mainBlack20,
                            )),
                        child: Row(
                          children: [
                            Icon(
                              icons[index],
                              color: AppColor.primaryColor90,),
                            horizontalSpace(10.w),
                            Text(categories[index], style: TextStyles.fontBody16BlackRegular)

                          ]

                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
