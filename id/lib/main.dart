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
      appBar: AppBar(
        title: Text('Simple Id'),
        backgroundColor: Colors.brown,
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
