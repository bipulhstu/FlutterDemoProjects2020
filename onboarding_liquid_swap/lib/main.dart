import 'package:flutter/material.dart';
import 'package:gooey_carousel/gooey_carrousel.dart';
import 'package:onboarding_liquid_swap/boardpage.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GooeyCarousel(
        children: [
          boardPage("assets/page1.png", "Create your own notes", Colors.green),
          boardPage(
              "assets/page2.png", "Share your notes with friends", Colors.blue),
          boardPage(
              "assets/page3.png",
              "Protect your data with our authentication system",
              Colors.purple[200]),
        ],
      ),
    );
  }
}
