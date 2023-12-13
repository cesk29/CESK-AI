import 'package:cesk_ai/src/presentation/home/widgets/main_section.dart';
import 'package:cesk_ai/src/presentation/home/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SizedBox(
          width: MediaQuery.sizeOf(context).width * 0.7,
          child: const Sidebar()),
      body: LayoutBuilder(builder: (context, constraints) {
        final isMobile = constraints.maxWidth <= 600;
        return Row(children: [
          //Sidebar
          if (!isMobile)
            const SizedBox(
              width: 300,
              child: Sidebar(),
            ),
          //chat section
          const MainSection(),
        ]);
      }),
    );
  }
}
