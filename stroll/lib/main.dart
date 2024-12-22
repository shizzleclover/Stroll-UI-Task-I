import 'package:flutter/material.dart';
import 'package:stroll/Core/Router/app_router.dart';
import './Core/Router/router.dart';

void main() => runApp(MyApp ());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouter.generateRoute,
      initialRoute: Routes.home,
    );
  }
}