import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/Core/Constants/colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      type: MaterialType.transparency,
      child: Stack(
        children: [
          // Base image
          Image.asset(
            'lib/Core/Assets/Images/back.png',
            fit: BoxFit.cover,
            width: 1.sw,
          ),
          // Text content
          Positioned(
            top: 50.h,
            left: 0,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Row(
                    children: [
                      const SizedBox(width: 80),
                      Text(
                        'Stroll Bonfire',
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 34.sp,
                          fontFamily: 'proxima',
                          fontWeight: FontWeight.w700,
                          color: AppColors.txtCol,
                          
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "22h 00m",
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        
                      ),
                    ),
                    SizedBox(width: 10.w),
                    Text(
                      '103',
                      textAlign: TextAlign.center,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                        
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          const SizedBox(height: 100, width: 40),
          const Row(
            children: [
              SizedBox(
                height: 60,
                width: 60,
              )
            ],
          )
        ],
      ),
    );
  }
}