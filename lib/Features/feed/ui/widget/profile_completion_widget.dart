import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:manasa/core/theme/app_color.dart';

class ProfileCompletionWidget extends StatelessWidget {
  final double completionPercentage;
  final String? profilePictureUrl;

  const ProfileCompletionWidget({super.key, required this.completionPercentage, this.profilePictureUrl});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          // Profile Image
          CircleAvatar(
            radius: 20.r,
            backgroundImage: profilePictureUrl != null
                ? NetworkImage(profilePictureUrl!)
                : AssetImage('assets/default_profile.png') as ImageProvider, // Default image
          ),

          // Circular Progress Indicator around the image
          CircleAvatar(
            radius: 22.r,
            child: CircularProgressIndicator(
              value: completionPercentage, // Completion progress
              strokeWidth: 3,
              backgroundColor: AppColor.primaryColor20,
              valueColor: AlwaysStoppedAnimation<Color>(AppColor.primaryColor90), // Customize color
            ),
          ),
        ],
      ),
    );
  }
}
