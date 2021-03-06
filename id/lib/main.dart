// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:id/list.dart';

void main() => runApp(MaterialApp(
      home: listTest(),
    ));

class simpleId extends StatefulWidget {
  const simpleId({Key? key}) : super(key: key);

  @override
  State<simpleId> createState() => _simpleIdState();
}

class _simpleIdState extends State<simpleId> {
  int age = 0;
  var sex = 'M';

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
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            age += 1;
            // sex = 'F';
          });
        },
        child: Icon(Icons.add),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('joker.jpg'),
                radius: 70,
              ),
            ),
            Divider(
              height: 60.0,
              color: Color.fromARGB(255, 222, 217, 217),
            ),
            Text(
              'Name:',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Dagim Fikru',
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 154, 68),
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Age:',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              '$age',
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 154, 68),
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Sex:',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              sex,
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 154, 68),
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            Text(
              'Nationality:',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              'Ethiopian',
              style: TextStyle(
                  color: Color.fromARGB(255, 175, 154, 68),
                  letterSpacing: 2.0,
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 40.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.phone,
                  color: Colors.white,
                ),
                Text(
                  ' +251926560513',
                  style: TextStyle(
                      color: Color.fromARGB(255, 175, 154, 68),
                      fontSize: 18.0,
                      letterSpacing: 2.0),
                ),
                SizedBox(
                  width: 70.0,
                ),
                Icon(
                  Icons.email,
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                Text(
                  ' dagimfikru@gmail.com',
                  style: TextStyle(
                      color: Color.fromARGB(255, 175, 154, 68),
                      fontSize: 18.0,
                      letterSpacing: 2.0),
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Icon(
                  Icons.location_pin,
                  color: Colors.white,
                ),
                Text(
                  ' Addis Ababa,  Ethiopia',
                  style: TextStyle(
                      color: Color.fromARGB(255, 175, 154, 68),
                      fontSize: 18.0,
                      letterSpacing: 2.0),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
