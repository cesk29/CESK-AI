import 'package:flutter/material.dart';

class QuestionButton extends StatelessWidget {
  const QuestionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            top: 500,
            right: 500,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(100),
                border: Border.all(color: const Color(0xfff1f1f1)),
              ),
              child: const Center(child: Text('?')),
            ))
      ],
    );
  }
}
