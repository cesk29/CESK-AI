import 'package:flutter/material.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromRGBO(2, 1, 44, 1),
        ),
        child: const Padding(
          padding: EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Cesk-AI',
                style: TextStyle(
                  fontSize: 24,
                  fontFamily: 'Nimbus',
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(198, 150, 248, 1),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Help me debug',
                    style: TextStyle(
                        fontSize: 40,
                        fontFamily: 'Nimbus',
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(198, 150, 248, 1)),
                  ),
                  SizedBox(
                    height: 0,
                  ),
                  Text(
                    'a Python script automating daily reports',
                    style: TextStyle(
                        fontSize: 32, color: Color.fromRGBO(198, 150, 248, 1)),
                  ),
                ],
              ),
              SizedBox.shrink(),
            ],
          ),
        ),
      ),
    );
  }
}
