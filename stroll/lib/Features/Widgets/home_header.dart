import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'lib/Core/Assets/Images/back.png',
          fit: BoxFit.contain,
          width: 1.sw, // Use ScreenUtil for full screen width
        ),
        Positioned(
          top: 50.h, // Use ScreenUtil for height
          left: 110.w, // Use ScreenUtil for width
          child: 
          Column(
            children: [
              Row(
                children: [
                      Text(
            'Stroll Bonfire',
            style: TextStyle(
              fontSize: 24.sp, // Use ScreenUtil for text size
              fontWeight: FontWeight.bold,
              color: Colors.white,
              shadows: [
                Shadow(
                  offset: Offset(2.w, 2.h), // Use ScreenUtil for shadow offsets
                  blurRadius: 4.r, // Use ScreenUtil for blur radius
                  color: Colors.black.withOpacity(0.5),
                ),
              ],
            ),
          ),
                ],
              ),

              Row(
                children: [
                    Text("22h 00m"),
                    SizedBox(width: 5,),
                    Text('103')
                ],
              )
              
                  
            ],
          )
          
          
        ),
      ],
    );
  }
}
