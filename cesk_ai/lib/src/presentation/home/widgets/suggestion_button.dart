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
          ? const Color.fromARGB(255, 241, 241, 241)
          : const Color.fromARGB(255, 232, 239, 255),
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
                            fontWeight: FontWeight.bold,
                            color: Color.fromRGBO(101, 101, 101, 1)),
                      ),
                      Text(
                        widget.description,
                        style: const TextStyle(
                          color: Color.fromRGBO(152, 152, 152, 1),
                        ),
                      ),
                    ],
                  ),
                ),
                // Icona che appare quando il pulsante è in stato hover
                if (isHovered)
                  Container(
                    width:
                        30, // Width and height are equal to make the container square
                    height: 30, // Square shape
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 255, 255, 255), // Container color
                      borderRadius: BorderRadius.circular(8), // Border radius
                    ),
                    child: const Icon(CupertinoIcons.arrow_up,
                        color: Color.fromARGB(255, 160, 160, 160), size: 16),
                  )
                else
                  const SizedBox(
                      width:
                          48), // Mantiene la spaziatura anche quando l'icona non è visibile
              ],
            ),
          ),
        ),
      ),
    );
  }
}
