import 'package:flutter/cupertino.dart';

class SuggestionButton extends StatefulWidget {
  const SuggestionButton({super.key, required this.title});

  final String title;

  @override
  State<SuggestionButton> createState() => _SuggestionButtonState();
}

class _SuggestionButtonState extends State<SuggestionButton> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      decoration: BoxDecoration(
          border:
              Border.all(width: 1, color: const Color.fromRGBO(0, 0, 0, 1))),
      duration: const Duration(milliseconds: 400),
      child: Row(
        children: [
          const Expanded(
            child: Column(
              children: [
                Text('Poesia'),
                Text('Si ni mondo esistesse un po di bene'),
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
    );
  }
}
