import 'package:flutter/material.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Beranda', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
      body: const Center(
        child: Text('Welcome to Beranda Page!', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
    );
  }
}
