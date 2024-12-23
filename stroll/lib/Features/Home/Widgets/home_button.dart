import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/Core/Constants/colors.dart';

class QuizOptionCard extends StatelessWidget {
  final String optionText;
  final String optionLabel;
  final bool isSelected;
  final VoidCallback onTap;

  const QuizOptionCard({
    Key? key,
    required this.optionText,
    required this.optionLabel,
    required this.isSelected,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        margin: EdgeInsets.symmetric(vertical: 8.h, horizontal: 8.w),
        padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 20.w),
        width: 0.4.sw,
        decoration: BoxDecoration(
          color: AppColors.pollCol,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: isSelected ? Colors.purple : AppColors.pollCol,
            width: 2.w,
          ),
        ),
        child: Row(
          children: [
            TweenAnimationBuilder(
              duration: const Duration(milliseconds: 200),
              tween: ColorTween(
                begin: Colors.transparent,
                end: isSelected ? Colors.purple : Colors.transparent,
              ),
              builder: (context, Color? color, child) {
                return Container(
                  height: 30.h,
                  width: 30.w,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: color,
                    border: Border.all(
                      color: isSelected ? Colors.purple : Colors.white,
                      width: 2.w,
                    ),
                  ),
                  child: child,
                );
              },
              child: Center(
                child: Text(
                  optionLabel,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Proxima",
                  ),
                ),
              ),
            ),
            SizedBox(width: 12.w),
            Expanded(
              child: Text(
                optionText,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10.sp,
                  fontFamily: "Proxima",
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}