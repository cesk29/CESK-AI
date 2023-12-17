import 'package:flutter/cupertino.dart';

class SuggestionButton extends StatefulWidget {
  const SuggestionButton(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;

  @override
  State<SuggestionButton> createState() => _SuggestionButtonState();
}

class _SuggestionButtonState extends State<SuggestionButton> {
  var isHovered = false;
  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (e) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        decoration: BoxDecoration(
            border:
                Border.all(width: 1, color: const Color.fromRGBO(0, 0, 0, 1))),
        duration: const Duration(milliseconds: 400),
        child: Row(
          children: [
            const Expanded(
              child: Column(
                children: [
                  Text(widget.title),
                  Text(widget.description),
                ],
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: const Icon(CupertinoIcons.arrow_up),
            ),
            const SizedBox(),
          ],
        ),
      ),
    );
  }
}
