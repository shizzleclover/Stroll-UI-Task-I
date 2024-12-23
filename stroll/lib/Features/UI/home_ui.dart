import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/Core/Constants/colors.dart';
import 'package:stroll/Core/Widgets/bottomnavbar.dart';
import 'package:stroll/Features/Widgets/home_button.dart';
import 'package:stroll/Features/Widgets/home_header.dart';
 

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
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
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
                
                // Profile Picture
                Positioned(
                  top: 300.h,
                  left: 20.w,
                  child: Container(
                    height: 90.h,
                    width: 90.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(45.r),
                    ),
                    child: Center(
                      child: SizedBox(
                        height: 90.h,
                        width: 90.w,
                        child: const Image(
                          image: AssetImage('lib/Core/Assets/Images/pfp.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ),

                // Name Container
                Positioned(
                  top: 310.h,
                  left: 85.w,
                  child: Container(
                    height: 30.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15.r)
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
                ),

                // Question Text
                Positioned(
                  top: 350.h,
                  left: 110.w,
                  child: Text(
                    'What is your favourite Time\n of the day?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontFamily: "Proxima",
                      height: 1.2,
                    ),
                  ),
                ),

                // Quiz Options
                Positioned(
                  top: 420.h,
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
                            optionText: 'Morning',
                            optionLabel: 'A',
                            isSelected: _selectedQuizOption == 0,
                            onTap: () => setState(() => _selectedQuizOption = 0),
                          ),
                          QuizOptionCard(
                            optionText: 'Afternoon',
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
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) => setState(() => _selectedIndex = index),
      ),
    );
  }
}