import 'package:flutter/material.dart';

class DemoPage extends StatelessWidget {
  const DemoPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Demo', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
      body: const Center(
        child: Text('Welcome to Demo Page!', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
    );
  }
}
