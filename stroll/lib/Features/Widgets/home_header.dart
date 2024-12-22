import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/Core/Constants/colors.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return 
    Material(
      type: MaterialType.transparency,
      child:    Stack(
      children: [
        // Base image
        Image.asset(
          'lib/Core/Assets/Images/back.png',
          fit: BoxFit.cover,
          width: 1.sw,
        ),
        // Gradient overlay
        // Positioned(
        //   bottom: 0,
        //   left: 0,
        //   right: 0,
        //   height: 0.4.sh, // Adjust this value to control gradient height
        //   child: Container(
        //     decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //         begin: Alignment.topCenter,
        //         end: Alignment.bottomCenter,
        //         colors: [
        //           Colors.transparent,
        //           Colors.black.withOpacity(0.3),
        //           Colors.black.withOpacity(0.5),
        //         ],
        //         stops: const [0.0, 0.5, 1.0],
        //       ),
        //     ),
        //   ),
        // ),
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
                        fontSize: 28.sp,
                        fontFamily: 'proxima',
                        fontWeight: FontWeight.bold,
                        color: AppColors.primaryLight,
                        shadows: [
                          Shadow(
                            offset: Offset(2.w, 2.h),
                            blurRadius: 4.r,
                            color: Colors.black.withOpacity(0.5),
                          ),
                        ],
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
                      shadows: [
                        Shadow(
                          offset: Offset(2.w, 2.h),
                          blurRadius: 4.r,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
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
                      shadows: [
                        Shadow(
                          offset: Offset(2.w, 2.h),
                          blurRadius: 4.r,
                          color: Colors.black.withOpacity(0.5),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),

        SizedBox(height: 100, width: 40,),
        Row(
          children: [
            Container(
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
    
 