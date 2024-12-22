import 'package:flutter/material.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return 
        Scaffold(
        body: Stack(
          children: [
            Image(image: AssetImage("lib/Core/Assets/Images/back.png")),
            Container(
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("lib/Core/Assets/Images/back.png"),
                fit: BoxFit.cover,
                )
              ),
            )
          ],
        ),
      );
    
  }
}