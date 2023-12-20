import 'package:flutter/material.dart';

class MessageAIWidget extends StatelessWidget {
  const MessageAIWidget(
      {super.key, // 2 mettere il parametro nel costruttore
      required this.label});

  //1 aggiunger il parametro
  final String label;

  @override
  Widget build(BuildContext context) {
    return Text(label); //3 inserire il parametro
  }
}
