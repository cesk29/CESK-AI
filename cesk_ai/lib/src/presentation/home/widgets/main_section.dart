import 'package:flutter/cupertino.dart';

class MainSection extends StatelessWidget {
  const MainSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(8),
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: const Color(0xFFf1f1f1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: const Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text('ChatGPT'),
                Icon(
                  CupertinoIcons.chevron_down,
                  size: 12,
                ),
              ],
            ),
          ),
          Column(
            children: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    border: Border.all(color: const Color(0xfff1f1f1))),
                child: Center(
                  child: Image.asset('assets/open_ai_logo.png'),
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
