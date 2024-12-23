import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/Core/Constants/colors.dart';
import 'package:stroll/Core/Widgets/bottomnavbar.dart';
import 'package:stroll/Features/Home/Widgets/home_button.dart';
import 'package:stroll/Features/Home/Widgets/home_header.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  int? _selectedQuizOption;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      const HomeBody(),
                      
                      // Background Image
                      Positioned(
                        bottom: -100.h,
                        left: 0,
                        right: 0,
                        child: Container(
                          height: 0.5.sh,
                          width: 1.sw,
                          decoration: const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('lib/Core/Assets/Images/fade.png'),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      
                      // Profile Picture and Name Stack
                      Positioned(
                        top: 380.h,
                        left: 20.w,
                        child: Material(
                          color: Colors.transparent,
                          child: Column(
                            children: [
                              // Profile Picture Container
                              Container(
                                height: 60.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(45.r),
                                    topRight: Radius.circular(45.r),
                                  ),
                                ),
                                child: Center(
                                  child: SizedBox(
                                    height: 50.h,
                                    width: 50.w,
                                    child: const Image(
                                      image: AssetImage('lib/Core/Assets/Images/pfp.png'),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                              ),
                              // Name Container
                              Container(
                                height: 30.h,
                                width: 75.w,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(15.r),
                                    bottomRight: Radius.circular(15.r),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    'Angelina, 28',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontFamily: "Proxima",
                                      color: Colors.white,
                                      fontSize: 12.sp,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),

                      // Question Text
                      Positioned(
                        top: 420.h,
                        left: 100.w,
                        child: Text(
                          'What is your favourite Time\n of the day?',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.sp,
                            fontFamily: "Proxima",
                            height: 1.2,
                          ),
                        ),
                      ),

                      // Quiz Options
                      Positioned(
                        top: 450.h,
                        left: 0,
                        right: 0,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            SizedBox(height: 8.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                QuizOptionCard(
                                  optionText: 'The peace in the\n early mornings',
                                  optionLabel: 'A',
                                  isSelected: _selectedQuizOption == 0,
                                  onTap: () => setState(() => _selectedQuizOption = 0),
                                ),
                                QuizOptionCard(
                                  optionText: 'The magical\n golden hours',
                                  optionLabel: 'B',
                                  isSelected: _selectedQuizOption == 1,
                                  onTap: () => setState(() => _selectedQuizOption = 1),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                QuizOptionCard(
                                  optionText: 'Evening',
                                  optionLabel: 'C',
                                  isSelected: _selectedQuizOption == 2,
                                  onTap: () => setState(() => _selectedQuizOption = 2),
                                ),
                                QuizOptionCard(
                                  optionText: 'Night',
                                  optionLabel: 'D',
                                  isSelected: _selectedQuizOption == 3,
                                  onTap: () => setState(() => _selectedQuizOption = 3),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: CustomBottomNavBar(
          selectedIndex: _selectedIndex,
          onItemSelected: (index) => setState(() => _selectedIndex = index),
        ),
      ),
    );
  }
}