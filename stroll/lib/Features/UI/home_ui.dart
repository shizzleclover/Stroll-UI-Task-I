import 'package:flutter/material.dart';
import '../Widgets/home_header.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          // gradient: LinearGradient(
          //  begin: Alignment.topLeft,
          //  end: Alignment.bottomLeft,
          //  colors: [
          //   Color.fromRGBO(15, 17, 21, 0),
          //   Color.fromRGBO(13, 14, 18, 0.28)
          //  ]
          //   )
        ),
      child: const SingleChildScrollView(
        child: Column(
          children: [
           HomeBody()
          ],
        ),
      ),
    );
  }
}