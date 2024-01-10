/* import 'package:cesk_ai/src/presentation/home/widgets/messages/message_ai.dart';
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


*/

import 'package:cesk_ai/src/presentation/home/widgets/hoverable_button.dart';
import 'package:cesk_ai/src/presentation/home/widgets/messages/message_ai.dart';
import 'package:cesk_ai/src/presentation/home/widgets/messages/message_user.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChatSection extends StatelessWidget {
  const ChatSection({super.key});

  @override
  Widget build(BuildContext context) {
    final messages = [
      {
        'type': 'user',
        'message': 'ciao',
      },
      {
        'type': 'assistant',
        'message': 'ciao a te',
      }
    ];
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: Stack(
          children: [
            Container(
                decoration: const BoxDecoration(
                    gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.bottomRight,
              stops: [
                0.1,
                0.4,
                0.8,
                0.9,
              ],
              colors: [
                Color.fromARGB(255, 0, 0, 0),
                Color.fromARGB(255, 0, 43, 43),
                Color.fromARGB(255, 0, 67, 60),
                Color.fromARGB(255, 0, 114, 103),
              ],
            ))),
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
                      const Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [HoverableButton()]),
                      Row(
                        children: [
                          Column(
                            children: messages
                                .map((e) => e['type'] == 'user'
                                    ? MessageUserWidget(
                                        label: e['message'] as String)
                                    : MessageAIWidget(
                                        label: e['message'] as String))
                                .toList(),
                          ),
                        ],
                      ),
                      Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          border: Border.all(
                            color: Colors.grey,
                            width: 1.0,
                          ),
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 8.0),
                              child: Text(
                                'Message...',
                                style: TextStyle(color: Colors.grey),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Icon(
                                CupertinoIcons.arrow_up_square_fill,
                                color: Color.fromARGB(255, 77, 77, 77),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox()
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 8,
              right: 8,
              child: Container(
                alignment: Alignment.center,
                width: 35,
                height: 35,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey),
                child: const Text(
                  '?',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
