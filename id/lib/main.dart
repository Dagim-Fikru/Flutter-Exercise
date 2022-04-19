// ignore_for_file: camel_case_types, prefer_const_constructors

import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: simpleId(),
    ));

class simpleId extends StatelessWidget {
  const simpleId({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 58, 53),
      appBar: AppBar(
        title: Text('Simple Id'),
        backgroundColor: Colors.brown,
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Text(
              'Name:',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
              width: 10.0,
            ),
            Text(
              'Dagim Fikru',
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 154, 68),
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
