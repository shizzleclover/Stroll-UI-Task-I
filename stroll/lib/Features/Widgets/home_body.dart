import 'package:flutter/material.dart';

export 'home_body.dart';
class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //!note column causes image not too render, infinite size limit
      
      body: Column(
        children: [
        Expanded(
          flex: 7,
          child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("lib/Core/Assets/Images/back.png"),
                  fit: BoxFit.cover
                  ),
              ),
          ),
        ),
        const Expanded(
          child: SizedBox(),
          flex: 3,
          )
        ],
      ),
    );
  }
}