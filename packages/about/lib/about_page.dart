import 'package:core/core.dart';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  color: kPrussianBlue,
                  child: Center(
                    child: Image.asset(
                      'assets/logo4.png',
                      width: 128,
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(32.0),
                  color: Colors.white,
                  child: const Text(
                    'NontonYuk merupakan sebuah aplikasi katalog film yang di buat untuk mempelajari flutter secara expert dengan menerapkan SOLID principle untuk bisa di manage lebih baik lagi.',
                    style: TextStyle(color: Colors.black87, fontSize: 16),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
            ],
          ),
          SafeArea(
            child: IconButton(
              onPressed: () => Navigator.pop(context),
              icon: const Icon(Icons.arrow_back),
            ),
          )
        ],
      ),
    );
  }
}
