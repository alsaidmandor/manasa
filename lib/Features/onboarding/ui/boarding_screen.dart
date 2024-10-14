import 'package:flutter/material.dart';

import '../../../core/theme/app_color.dart';
import '../../../core/theme/icon_moon.dart';
import '../../../core/theme/styles.dart';
import '../../../core/widget/app_text_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  // List of images for the onboarding screens
/*
  final List<String> _images = [
    'assets/images/onboarding_1.png',
    'assets/images/onboarding_2.png',

  ];
*/

  final List<Map<String,String>> dataOnboarding =[
    {
      'title': 'اجعل التعلم متاحا في أي مكان',
      'description':' هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص.',
      'image': 'assets/images/onboarding_1.png',
    },
    {
      'title': 'قم بتمكين تجربة التعلم الخاصة بك',
      'description':'هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص.',
      'image': 'assets/images/onboarding_2.png',
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.primaryColor20,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 18, 20, 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Logo at the top
            Padding(
              padding: const EdgeInsets.only(top: 80.0),
              child: Center(
                child: Icon(IconMoon.logo,size:60,color:AppColor.primaryColor90),
              ),
            ),

            // PageView for onboarding content
            Expanded(
              flex: 3,
              child: PageView.builder(
                controller: _pageController,
                onPageChanged: (index) {
                  setState(() {
                    _currentPage = index;
                  });
                },
                itemCount: dataOnboarding.length,
                itemBuilder: (context, index) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        dataOnboarding[index]['image']!,

                        height: 300,
                        width: 300,
                      ),
                      Text(dataOnboarding[index]['title']! , style: TextStyles.fontHeading24BlackBold,),
                      Text(dataOnboarding[index]['description']!,style: TextStyles.fontBody14BlackMedium.copyWith(color: AppColor.mainBlack60),)
                    ],
                  );
                },
              ),
            ),



            // "Next" Button at the bottom
            Expanded(child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Dots Indicator
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      dataOnboarding.length,
                          (index) => buildDot(index),
                    ),
                  ),
                ),
                AppTextButton(buttonText: 'التالي', textStyle: TextStyles.fontBody16BlackSemiBold, onPressed: () {
                  if (_currentPage < dataOnboarding.length - 1) {
                    _pageController.nextPage(duration: Duration(milliseconds: 500), curve:Curves.fastOutSlowIn);
                  } else {
                    // Navigate to the main app after finishing onboarding
                    // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => MainScreen()));
                  }
                },buttonWidth: 150,),
              ],
            ))

          ],
        ),
      ),
    );
  }

  // Method to build each dot
  Widget buildDot(int index) {
    return Container(
      height: 10,
      width: 10,
      margin: EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        color: _currentPage == index ? Colors.blue : Colors.grey,
        shape: BoxShape.circle,
      ),
    );
  }
}


