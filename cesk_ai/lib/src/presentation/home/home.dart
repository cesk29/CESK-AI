import 'package:cesk_ai/src/presentation/home/widgets/main_section.dart';
import 'package:cesk_ai/src/presentation/home/widgets/sidebar.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Row(children: [
        //Sidebar
        Sidebar(),
        MainSection(),
        //chat section
      ]),
    );
  }
}
