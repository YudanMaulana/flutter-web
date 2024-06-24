import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Web Navbar Example',
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
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          decoration: const BoxDecoration(
            color: Color(0xFFFFFFFF), // Warna putih dalam format hex
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 2),
              ),
            ],
          ),
          child: AppBar(
            backgroundColor: const Color(0xFFFFFFFF), // Warna putih dalam format hex
            elevation: 0,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  child: Row(
                    children: [
                      const Text(
                        'Media ',
                        style: TextStyle(
                          color: Color(0xFF5F6368),
                          fontSize: 24,
                          fontFamily: 'GoogleSans',
                        ),
                      ),
                      AnimatedTextKit(
                        animatedTexts: [
                          TypewriterAnimatedText(
                            'Santri Nusantara',
                            textStyle: const TextStyle(
                              color: Color(0xFF4CAF50), // Warna hijau dalam format hex
                              fontSize: 24,
                              fontFamily: 'GoogleSans',
                            ),
                            speed: const Duration(milliseconds: 100),
                          ),
                        ],
                        repeatForever: true,
                        pause: const Duration(milliseconds: 500),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const BerandaPage()),
                        );
                      },
                      child: const Text(
                        'Beranda',
                        style: TextStyle(
                          color: Color(0xFF5F6368),
                          fontFamily: 'GoogleSans',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DemoPage()),
                        );
                      },
                      child: const Text(
                        'Demo',
                        style: TextStyle(
                          color: Color(0xFF5F6368),
                          fontFamily: 'GoogleSans',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const DokumentasiPage()),
                        );
                      },
                      child: const Text(
                        'Dokumentasi',
                        style: TextStyle(
                          color: Color(0xFF5F6368),
                          fontFamily: 'GoogleSans',
                        ),
                      ),
                    ),
                    const SizedBox(width: 20),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => const HubungiPage()),
                        );
                      },
                      child: const Text(
                        'Hubungi',
                        style: TextStyle(
                          color: Color(0xFF5F6368),
                          fontFamily: 'GoogleSans',
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      body: const Center(
        child: Text(
          'Content here',
          style: TextStyle(fontFamily: 'GoogleSans'),
        ),
      ),
    );
  }
}

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
