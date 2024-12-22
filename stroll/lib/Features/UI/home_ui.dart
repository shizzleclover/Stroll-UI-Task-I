import 'package:flutter/material.dart';
import '../Widgets/home_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            HomeBody()
          ],
        ),
      ),
    );
  }
}