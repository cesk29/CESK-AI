import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SuggestionButton extends StatefulWidget {
  const SuggestionButton({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;
  // parametri, puoi aggiungere un valore da un altro widget a questo

  @override
  State<SuggestionButton> createState() => _SuggestionButtonState();
}

class _SuggestionButtonState extends State<SuggestionButton> {
  var isHovered = false;

  @override
  Widget build(BuildContext context) {
    final buttonStyle = TextButton.styleFrom(
      backgroundColor: isHovered
          ? const Color.fromARGB(162, 121, 255, 226)
          : const Color.fromARGB(255, 241, 241, 241),
      padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 20.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
    );

    return MouseRegion(
      onEnter: (e) {
        setState(() => isHovered = true);
      },
      onExit: (e) {
        setState(() => isHovered = false);
      },
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 400),
          width: 344,
          height: 70,
          child: TextButton(
            style: buttonStyle,
            onPressed: () {},
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        widget.title,
                        style: const TextStyle(
                            fontFamily: 'Nimbus',
                            fontWeight: FontWeight.w500,
                            fontSize: 13,
                            color: Color.fromRGBO(0, 0, 0, 1)),
                      ),
                      Text(
                        widget.description,
                        style: const TextStyle(
                          fontFamily: 'Nimbus',
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromRGBO(164, 164, 164, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                if (isHovered)
                  Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // Container color
                      borderRadius: BorderRadius.circular(8), // Border radius
                    ),
                    child: const Icon(CupertinoIcons.arrow_up,
                        color: Color.fromARGB(255, 0, 0, 0), size: 16),
                  )
                else
                  const SizedBox(width: 48),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
