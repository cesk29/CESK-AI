import 'package:flutter/material.dart';

class MyContainer extends StatefulWidget {
  const MyContainer({super.key});

  @override
  _MyContainerState createState() => _MyContainerState();
}

class _MyContainerState extends State<MyContainer> {
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[300],
      child: Row(
        children: [
          Expanded(
            child: Container(
              color: Colors.blue,
              child: const Center(
                child: Text(
                  'Expanded Content',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
          MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered = false;
              });
            },
            child: Visibility(
              visible: isHovered,
              child: Container(
                width: 50,
                height: 50,
                color: Colors.red,
                child: const Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
