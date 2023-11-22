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
                color:Color.fromARGB(255, 232, 227, 183),
              ),
              child: Padding(
                padding: const EdgeInsets.all(32.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Cesk.AI',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 189, 79, 23),
                      ),
                    ),
                    Text('Brainstorm',
                      style: TextStyle(
                        fontSize: 64,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 189, 79, 23),
                      ),
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
                        Text('Get Started'),
                        Container(
                          width: double.infinity,
                          height: 48,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: Center(
                            child: Text('Log in'),
                          ),
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