import 'package:flutter/material.dart';
import 'package:animated_widgets/animated_widgets.dart';

void main() {
  runApp(const MyExampleApp());
}

class MyExampleApp extends StatelessWidget {
  const MyExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Animated Widgets Example')),
        body: Center(
          child: BounceInWidget(
            child: Container(
              width: 100,
              height: 100,
              color: Colors.blue,
            ),
          ),
        ),
      ),
    );
  }
}
