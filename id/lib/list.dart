// ignore_for_file: prefer_const_constructors, camel_case_types

import 'package:flutter/material.dart';
import 'authors.dart';

void main() => runApp(MaterialApp(
      home: listTest(),
    ));

class listTest extends StatefulWidget {
  const listTest({Key? key}) : super(key: key);

  @override
  State<listTest> createState() => _listTestState();
}

class _listTestState extends State<listTest> {
  List<list> sentences = [
    list(sentence: 'Abebe beso bela', author: 'Abebe'),
    list(sentence: 'Chala chube chebete', author: 'Chala'),
    list(sentence: 'Dagim code aderege', author: 'Dagim')
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('List of Data'),
        centerTitle: true,
        backgroundColor: Colors.brown,
        elevation: 0.0,
      ),
      body: Column(
        children: sentences.map((e) {
          return Text('${e.sentence} - ${e.author}');
        }).toList(),
      ),
    );
  }
}
