import 'package:flutter/material.dart';

class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 0, 0, 0),
        ),
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 8),
                  child: Image.asset(
                    'assets/Asset1img_pic.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 6),
                  child: Text(
                    'Last Chats',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'Nimbus',
                      fontWeight: FontWeight.w200,
                      color: Color.fromRGBO(255, 255, 255, 1),
                    ),
                  ),
                ),
                const Spacer(),
                const Icon(
                  Icons.add,
                  color: Color.fromRGBO(255, 255, 255, 1),
                ),
                if (MediaQuery.sizeOf(context).width <= 600)
                  GestureDetector(
                      onTap: () {
                        if (!Scaffold.of(context).isDrawerOpen) {
                          Scaffold.of(context).openDrawer();
                        }
                      },
                      child: const CloseButton()),
              ],
            ),
          ),
          Expanded(
            child: ListView(
              children: const [
                Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Help me debug',
                              style: TextStyle(
                                  fontSize: 10,
                                  fontFamily: 'Nimbus',
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromRGBO(160, 160, 160, 1)),
                            ),
                            Text(
                              'Help me debug my script please',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color.fromRGBO(255, 255, 255, 1)),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Finding bugs is part of development',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Code reviews improve code quality',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Programming requires creativity',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Efficient code is easy to maintain',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Debugging makes you a better coder',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Practice makes perfect in programming',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 72),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Coding is about problem-solving',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Keep your code clean and organized',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Debugging is like detective work',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Programming opens up endless possibilities',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Coding is the language of the future',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Programmers create the digital world',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 72),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Debugging is a puzzle-solving skill',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Great coders write maintainable code',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 32),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Debugging makes you a better coder',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Practice makes perfect in programming',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Coding is about problem-solving',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Keep your code clean and organized',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 24),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Debugging is like detective work',
                              style: TextStyle(
                                fontSize: 10,
                                fontFamily: 'Nimbus',
                                fontWeight: FontWeight.bold,
                                color: Color.fromRGBO(160, 160, 160, 1),
                              ),
                            ),
                            Text(
                              'Programming opens up endless possibilities',
                              style: TextStyle(
                                fontSize: 13,
                                color: Color.fromRGBO(255, 255, 255, 1),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 12),
                      child: CircleAvatar(
                        radius: 18.0,
                        backgroundImage: NetworkImage(
                            'https://cdn.dribbble.com/users/1787323/screenshots/4458591/dribbbe_bulbasaur-01.png'),
                      ),
                    ),
                    Text(
                      'Billy Bulbasaur',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Nimbus',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(255, 255, 255, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
