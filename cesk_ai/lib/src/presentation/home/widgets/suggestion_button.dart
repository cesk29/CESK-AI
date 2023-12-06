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
      duration: const Duration(milliseconds: 400),
      child: Row(
        children: [
          Expanded(
            child: Column(children: [
              Text(widget.title),
              const Text('data'),
            ]),
          ),
          isHovered
              ? Container(
                  alignment: Alignment.center,
                  child: const Icon(CupertinoIcons.arrow_up),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
