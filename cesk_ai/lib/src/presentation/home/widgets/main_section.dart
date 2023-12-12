import 'package:cesk_ai/src/presentation/home/widgets/hoverable_button.dart';
import 'package:cesk_ai/src/presentation/home/widgets/suggestion_button.dart';
import 'package:flutter/cupertino.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
              alignment: Alignment.topLeft, child: const HoverableButton()),
          Column(
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: const Color(0xfff1f1f1))),
                child: Center(
                  child: Image.asset(
                    'assets/open_ai_logo.png',
                    width: 56,
                    height: 56,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                'How i can help you today?',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Nimbus'),
              ),
            ],
          ),
          const Row(
            children: [
              SuggestionButton(),
              Text('ciao'),
            ],
          ),
        ],
      ),
    );
  }
}
