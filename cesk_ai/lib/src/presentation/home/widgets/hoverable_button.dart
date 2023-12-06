import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HoverableButton extends StatefulWidget {
  const HoverableButton({super.key});

  @override
  State<HoverableButton> createState() => _HoverableButtonState();
}

class _HoverableButtonState extends State<HoverableButton> {
  var isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        print('On enter');
        setState(() {
          isHovered = true;
        });
        print(isHovered);
      },
      onExit: (e) {
        print('On exit');
        setState(() {
          isHovered = false;
        });
        print(isHovered);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        curve: Curves.bounceInOut,
        child: Container(
          margin: const EdgeInsets.all(8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: isHovered ? const Color(0xfff1f1f1) : Colors.transparent,
            borderRadius: BorderRadius.circular(8),
          ),
          child: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('ChatGPT'),
              Icon(
                CupertinoIcons.chevron_down,
                size: 12,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
