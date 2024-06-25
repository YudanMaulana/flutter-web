import 'package:flutter/material.dart';

class DokumentasiPage extends StatelessWidget {
  const DokumentasiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dokumentasi', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
      body: const Center(
        child: Text('Welcome to Dokumentasi Page!', style: TextStyle(fontFamily: 'GoogleSans')),
      ),
    );
  }
}
