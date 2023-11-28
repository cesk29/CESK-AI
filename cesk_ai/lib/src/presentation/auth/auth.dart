// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Color.fromRGBO(2, 1, 44, 1),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cesk.AI',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromRGBO(198, 150, 248, 1),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Plan a trip',
                          style: TextStyle(
                              fontSize: 48,
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(198, 150, 248, 1)),
                        ),
                        Text(
                          'to see the northern lights in Norwey',
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.normal,
                              color: Color.fromRGBO(198, 150, 248, 1)),
                        ),
                      ],
                    ),
                    SizedBox.shrink(),
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: Center(
              child: SizedBox(
                width: 480,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(),
                    Column(
                      children: [
                        SizedBox(),
                        Column(
                          children: [
                            Text(
                              'Get Started',
                              style: TextStyle(
                                color: Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.bold,
                                fontSize: 32,
                              ),
                            ),
                            SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(77, 75, 245, 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Log in',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                  child: Container(
                                    width: double.infinity,
                                    height: 48,
                                    decoration: BoxDecoration(
                                      color: Color.fromRGBO(77, 75, 245, 1),
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'Sign up',
                                        style: TextStyle(
                                          color:
                                              Color.fromRGBO(255, 255, 255, 1),
                                          fontWeight: FontWeight.w600,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Text('Qualcosa'),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text('Qualcosa'),
                            Container(),
                            Text('Qualcosa'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
