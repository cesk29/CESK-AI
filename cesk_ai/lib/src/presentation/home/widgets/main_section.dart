import 'package:cesk_ai/src/presentation/home/widgets/hoverable_button.dart';
import 'package:cesk_ai/src/presentation/home/widgets/suggestion_button.dart';
import 'package:flutter/material.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Stack(
        children: [
          Column(
            children: [
              if (MediaQuery.sizeOf(context).width <= 600)
                GestureDetector(
                    onTap: () {
                      if (!Scaffold.of(context).isDrawerOpen) {
                        Scaffold.of(context).openDrawer();
                      }
                    },
                    child: const Icon(Icons.menu)),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.topLeft,
                        child: const HoverableButton()),
                    Column(
                      children: [
                        SizedBox(
                          width: 80,
                          height: 80,
                          child: Center(
                            child: Image.asset(
                              'assets/Asset1img_pic.png',
                              width: 80,
                              height: 80,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        const Text(
                          'How i can help you today?',
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'Nimbus'),
                        ),
                      ],
                    ),
                    const Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SuggestionButton(
                                title: 'Come up with concepts',
                                description: 'for a retro-style arcade game'),
                            SuggestionButton(
                                title: 'Compare design',
                                description: 'for mobile app'),
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SuggestionButton(
                                title: 'Explains options trading',
                                description:
                                    'if im familiar with buying stocks'),
                            SuggestionButton(
                                title: 'Design a database schema',
                                description: 'for a online merch store'),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
              bottom: 10,
              right: 10,
              child: Container(
                width: 28,
                height: 28,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: const Color(0xFFf1f1f1),
                  borderRadius: BorderRadius.circular(24),
                  border: Border.all(
                      color: const Color.fromARGB(255, 224, 224, 224)),
                ),
                child: const Center(child: Text('?')),
              ))
        ],
      ),
    );
  }
}
