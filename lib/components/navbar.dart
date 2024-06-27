import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import '../pages/beranda_page.dart';
import '../pages/demo_page.dart';
import '../pages/dokumentasi_page.dart';
import '../pages/hubungi_page.dart';

class Navbar extends StatefulWidget implements PreferredSizeWidget {
  const Navbar({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _NavbarState createState() => _NavbarState();

  @override
  Size get preferredSize => const Size.fromHeight(60.0);
}

class _NavbarState extends State<Navbar> {
  bool _isAnimationFinished = false;

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  const Padding(
                    padding: EdgeInsets.only(right: 8.0), // Margin antara teks dan animasi
                    child: Text(
                      'Media ',
                      style: TextStyle(
                        color: Color(0xFF5C615E),
                        fontSize: 24,
                        fontFamily: 'GoogleSans',
                      ),
                    ),
                  ),
                  _isAnimationFinished
                      ? const Text(
                          'Santri Nusantara',
                          style: TextStyle(
                            color: Color.fromRGBO(76, 175, 80, 1), // Warna hijau dalam format hex
                            fontSize: 24,
                            fontFamily: 'GoogleSans',
                          ),
                        )
                      : AnimatedTextKit(
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
                          isRepeatingAnimation: false, // Hanya memainkan animasi sekali
                          onFinished: () {
                            setState(() {
                              _isAnimationFinished = true;
                            });
                          },
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
                      color: Color(0xFF5C615E),
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
                      color: Color(0xFF5C615E),
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
                      color: Color(0xFF5C615E),
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
                      color: Color(0xFF5C615E),
                      fontFamily: 'GoogleSans',
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
