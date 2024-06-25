import 'package:flutter/material.dart';

class HubungiPage extends StatelessWidget {
  const HubungiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hubungi', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
      body: const Center(
        child: Text('Welcome to Hubungi Page!', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
    );
  }
}
