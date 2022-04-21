// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_string_interpolations, use_key_in_widget_constructors, prefer_const_constructors_in_immutables, deprecated_member_use

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
    list(quote: 'Abebe beso bela', author: 'Abebe'),
    list(quote: 'Chala chube chebete', author: 'Chala'),
    list(quote: 'Dagi code aderege', author: 'dagi')
  ];

  // Widget cardTest(sentence) {
  //   return Padding(
  //     padding: EdgeInsets.all(12),
  //     child: QuoteCard(sentence: sentence, delete: delete),
  //   );
  // }

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
          children: sentences
              .map(
                (sentence) => QuoteCard(
                  sentence: sentence,
                  delete: () {
                    setState(() {
                      sentences.remove(sentence);
                    });
                  },
                ),
              )
              .toList()),
    );
  }
}

class QuoteCard extends StatelessWidget {
  final list sentence;
  final Function delete;
  QuoteCard({required this.sentence, required this.delete});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            sentence.quote,
            style: TextStyle(fontSize: 20.0, color: Colors.blue),
          ),
          SizedBox(
            height: 6,
          ),
          Text(
            sentence.author,
            style: TextStyle(fontSize: 15, color: Colors.black),
          ),
          SizedBox(
            height: 10,
          ),
          RaisedButton.icon(
              onPressed: () {
                delete();
              },
              icon: Icon(Icons.delete),
              label: Text('delete'))
        ],
      ),
    );
  }
}
