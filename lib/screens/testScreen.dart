import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({Key? key}) : super(key: key);

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  //  The State (Variable)
  String message = "Hello World!";

  @override
  Widget build(BuildContext context) {
    print("all code is getting updated");
    return Scaffold(
      appBar: AppBar(title: const Text('Stateful Approach')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //  The View (UI)
            Text(message, style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                //  The Logic (forces the entire build method to run again)
                setState(() {
                  if (message == "Hello World!") {
                    message = "Text Changed!";
                  } else {
                    message = "Hello World!";
                  }
                });
              },
              child: const Text('Change Text'),
            ),
          ],
        ),
      ),
    );
  }
}
