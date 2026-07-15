import 'package:flutter/material.dart';

class testScreen extends StatefulWidget {
  const testScreen({super.key});

  @override
  State<testScreen> createState() => _testScreenState();
}

class _testScreenState extends State<testScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.sizeOf(context).width;
    double screenHeight = MediaQuery.sizeOf(context).height;
    return Scaffold(
      body: Center(
        child: Container(
          height: screenHeight * 0.5,
          width: screenWidth * 0.5,
          color: const Color.fromARGB(255, 255, 0, 0),
          child: Column(
            children: [
              Text('screen width $screenWidth', style: TextStyle(fontSize: 25)),
              Text(
                'screen height $screenHeight',
                style: TextStyle(fontSize: 25),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
