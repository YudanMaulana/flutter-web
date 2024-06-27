import 'package:flutter/material.dart';
import 'components/navbar.dart';
import 'pages/beranda_page.dart';
import 'pages/demo_page.dart';
import 'pages/dokumentasi_page.dart';
import 'pages/hubungi_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Media Santri Nusantara',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontFamily: 'GoogleSans'),
        ),
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const Navbar(),
      body: Center(
        child: ListView(
          children: [
            Center(
              child: Container(
              padding: const EdgeInsets.all(500),
              margin: const EdgeInsets.fromLTRB(0, 20, 0, 0),
              color: const Color(0xFFF5F5F5), // Warna latar belakang untuk Container
              child: const Padding(
                padding: EdgeInsets.all(16.0), // Padding di semua sisi konten
                child: Text(
                  'Content here',
                  style: TextStyle(fontFamily: 'GoogleSans'),
                ),
              ),
                        ),
            ),
          ],
        ),
      ),
    );
  }
}
