import 'package:flutter/material.dart';
import 'package:stroll/Core/Constants/colors.dart';
import 'package:stroll/Core/Widgets/bottomnavbar.dart';
import '../Widgets/home_header.dart';
import '../Widgets/home_footer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                // Main content
                const HomeBody(),
                
                // Bottom half image
                Positioned(
                  bottom: -100,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: screenHeight * 0.5, // Takes up bottom half of screen
                    width: screenWidth,
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('lib/Core/Assets/Images/fade.png'), // Replace with your image
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                
                // Profile picture with circular container
                Positioned(
                  top: 300,
                  left: 20,
                  child: Container(
                    height: 90,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: const Center(
                      child: SizedBox(
                        height: 100,
                        width: 100,
                        child: Image(
                          image: AssetImage('lib/Core/Assets/Images/pfp.png'),
                        ),
                      ),
                    ),
                  ),
                ),

                // Name container
                Positioned(
                  top: 310,
                  left: 85,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 30,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.black,
                          borderRadius: BorderRadius.circular(100)
                        ),
                        child: Center(
                          child: Text(
                            'Angelina, 28',
                            style: Theme.of(context).textTheme.titleLarge?.copyWith(
                              fontWeight: FontWeight.bold,
                              fontFamily: "proxima",
                              color: Colors.white,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // Question text
                Positioned(
                  top: 350,
                  left: 110,
                  child: Column(
                    children: [
                      Text(
                        'What is your favourite Time\n of the day?',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.white,
                          fontSize: 20,
                          fontFamily: "Proxima"
                        ),
                      ),
                    ],
                  ),
                ),

                // You can add more widgets here positioned over the bottom image
              ],
            ),
          ],
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}