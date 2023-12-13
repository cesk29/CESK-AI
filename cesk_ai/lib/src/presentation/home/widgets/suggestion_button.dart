import 'package:flutter/cupertino.dart';

class SuggestionButton extends StatefulWidget {
  const SuggestionButton(
      {super.key, required this.title, required this.description});

  final String title;
  final String description;
//parametri, puoi aggiungere un valore da un altro widget a questo

  @override
  State<SuggestionButton> createState() => _SuggestionButtonState();
}

class _SuggestionButtonState extends State<SuggestionButton> {
  var isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (e) {
        isHovered = true;
        setState(() {});
      },
      onExit: (e) {
        isHovered = false;
        setState(() {});
      },
      child: AnimatedContainer(
        duration: const Duration(
          milliseconds: 400,
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Text(
                    widget.description,
                    style:
                        const TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Text(
                    widget.title,
                    style: const TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                  ),
                  Text(
                    widget.description,
                    style:
                        const TextStyle(color: Color.fromARGB(255, 51, 51, 51)),
                  ),
                ],
              ),
            ),
            isHovered
                ? Container(
                    alignment: Alignment.center,
                    child: const Icon(CupertinoIcons.add),
                  )
                : const SizedBox(),
          ],
        ),
      ),
    );
  }
}
