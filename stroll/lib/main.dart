import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:stroll/Core/Router/app_router.dart';
import './Core/Router/router.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return const MaterialApp(
          debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.home,
        );
      },
       
    );
  }
}