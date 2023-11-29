import 'package:cesk_ai/src/presentation/auth/widgets/form_section.dart';
import 'package:cesk_ai/src/presentation/auth/widgets/hero_section.dart';
import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        final isDesktop = constraints.maxWidth > 1000;
        print('width: ${constraints.maxWidth}');
        print('isDeskto: $isDesktop');
        return Flex(
          direction: isDesktop ? Axis.horizontal : Axis.vertical,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const [
            HeroSection(),
            FormSection(),
          ],
        );
      }),
    );
  }
}
