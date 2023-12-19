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
    // Stile del pulsante personalizzato
    final buttonStyle = ElevatedButton.styleFrom(
      foregroundColor: Colors.white,
      backgroundColor: isHovered
          ? Colors.blueGrey[800]
          : Colors.blueGrey[900], // Colore del testo
      padding: const EdgeInsets.symmetric(
          horizontal: 32.0, vertical: 20.0), // Padding
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0), // Bordi arrotondati
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
          decoration: BoxDecoration(
            gradient: isHovered
                ? LinearGradient(colors: [
                    Colors.blueGrey[700]!,
                    const Color.fromARGB(255, 116, 159, 180)
                  ])
                : LinearGradient(
                    colors: [Colors.blueGrey[800]!, Colors.blueGrey[900]!]),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: ElevatedButton(
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
                        ),
                      ),
                      Text(
                        widget.description,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 200, 200, 200),
                        ),
                      ),
                    ],
                  ),
                ),
                // Icona che appare quando il pulsante è in stato hover
                if (isHovered)
                  Container(
                    width:
                        24, // Width and height are equal to make the container square
                    height: 24, // Square shape
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(
                          255, 43, 43, 43), // Container color
                      borderRadius: BorderRadius.circular(8), // Border radius
                    ),
                    child: const Icon(CupertinoIcons.arrow_up,
                        color: Colors.white, size: 12),
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
