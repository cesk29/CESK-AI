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
                padding: const EdgeInsets.all(36.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Cesk-AI',
                      style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Nimbus',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(198, 150, 248, 1),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Plan a trip',
                          style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Nimbus',
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(198, 150, 248, 1)),
                        ),
                        SizedBox(
                          height: 0,
                        ),
                        Text(
                          'to see the northern lights in Norwey',
                          style: TextStyle(
                              fontSize: 32,
                              fontFamily: 'Nimbus',
                              fontWeight: FontWeight.w300,
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
                                fontFamily: 'Nimbus',
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
                                          fontFamily: 'Nimbus',
                                          fontWeight: FontWeight.bold,
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
                                          fontFamily: 'Nimbus',
                                          fontWeight: FontWeight.bold,
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
                        Text(
                          'OpenAI',
                          style: TextStyle(
                            fontFamily: 'Nimbus',
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 12,
                        ),
                        SizedBox(
                          width: 230,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Terms of use',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                              Container(
                                width: 1,
                                height: 8,
                                decoration: BoxDecoration(
                                  color: Color.fromRGBO(0, 0, 0, 1),
                                ),
                                child: Text('I'),
                              ),
                              Text(
                                'Privacy policy',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 24,
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
