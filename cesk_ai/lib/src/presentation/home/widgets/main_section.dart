import 'package:cesk_ai/src/presentation/home/widgets/hoverable_button.dart';
import 'package:flutter/cupertino.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          const HoverableButton(),
          Column(
            children: [
              Container(
                width: 72,
                height: 72,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    border: Border.all(color: const Color(0xfff1f1f1))),
                child: Center(
                  child: Image.asset(
                    'assets/open_ai_logo.png',
                    width: 48,
                    height: 48,
                  ),
                ),
              ),
              const Text('How i can help you today?')
            ],
          ),
        ],
      ),
    );
  }
}
