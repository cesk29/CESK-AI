import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(children: [
        Row(
          children: [
            Container(),
            const Text('ChatGPT'),
            const Spacer(),
            const Icon(Icons.add),
          ],
        ),
        Expanded(
          child: ListView(),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.network(
                  'https://t0.gstatic.com/licensed-image?q=tbn:ANd9GcSafEPPinDM7CIUSO4NnEXQsDUopcafuTQ_7YJPcmrYf6ELHpbVzVp8KVkzRE1zh1AO',
                  width: 30,
                ),
              ),
            ),
          ],
        ),
      ]),
    );
  }
}
