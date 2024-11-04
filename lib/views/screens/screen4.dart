import 'package:flutter/material.dart';

class Screen4 extends StatefulWidget {
  const Screen4({super.key});

  @override
  State<Screen4> createState() => _Screen4State();
}

class _Screen4State extends State<Screen4> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'images/image4.jpg',
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
