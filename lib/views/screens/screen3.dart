import 'package:flutter/material.dart';

class Screen3 extends StatefulWidget {
  const Screen3({super.key});

  @override
  State<Screen3> createState() => _Screen3State();
}

class _Screen3State extends State<Screen3> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/image3.jpg',
          width: 350,
        ),
        const SizedBox(height: 40),
        const Text(
          'We Need To Work Hard',
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.w600,
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'We Need To Work Hard We Need To Work Hard We Need To Work Hard We Need To Work Hard We Need To Work Hard We Need To Work Hard',
            style: TextStyle(
              color: Colors.black.withOpacity(0.4),
              fontSize: 16,
              fontWeight: FontWeight.w300,
            ),
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
