import 'package:cesk_ai/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:cesk_ai/src/presentation/home/widgets/messages/message_user.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      //lista di dizionari
      {
        'type': 'user',
        'message': 'ciao',
      },
      {
        'type': 'assistent',
        'message': 'ciao anche a te',
      },
    ];
    final res = messages
        .map((e) => e['type'] == 'user'
            ? MessageUserWidget(label: e['message'] as String)
            : MessageAIWidget(label: e['message'] as String))
        .toList();
    return Column(
      children: res,
    );

    /* METODI ALTERNATIVI

    2METODO (Forse il migliore)

    return Column(
      children: messages
          .map((e) => e['type'] == 'user'
              ? MessageUserWidget(label: e['message'] as String)
              : MessageAIWidget(label: e['message'] as String))
          .toList(),
    );

    1METODO

    return Column(
      children: [
        for (final message in messages)
          message['type'] == 'user'
              ? MessageUserWidget(label: message['message'] as String)
              : MessageAIWidget(label: message['message'] as String),
      ],
    );
    
    */
  }
}
