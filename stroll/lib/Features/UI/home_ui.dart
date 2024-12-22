import 'package:flutter/material.dart';
import '../Widgets/home_header.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF4A148C),  // Dark Purple
              Color(0xFF7B1FA2),  // Purple
              Color(0xFF9C27B0),  // Light Purple
            ],
          ),
        ),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              HomeBody()
            ],
          ),
        ),
      ),
    );
  }
}