// ignore_for_file: prefer_const_constructors, sort_child_properties_last, prefer_const_literals_to_create_immutables, duplicate_ignore, sized_box_for_whitespace, empty_statements

import 'package:flutter/material.dart';

String status1 = "Pending";
String status2 = "Pending";
String status3 = "Pending";
String status4 = "Pending";

void main() => runApp(MaterialApp(home: Home()));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Text('Orders',
                  style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300)),
              Spacer(),
              Text(
                '872',
                style: TextStyle(
                    fontSize: 45,
                    color: Colors.grey,
                    fontWeight: FontWeight.w300),
              )
            ],
          ),
          backgroundColor: Colors.black),
      body: Container(
        color: Colors.black,
        child: Column(children: [
          cardTemplate1(),
          cardTemplate2(),
          cardTemplate3(),
          cardTemplate4()
        ]),
        //children: <Widget>[] ,                                                                                  //SizedBox(height: 50)
      ),
    );
    // ignore: dead_code
  }
}

Widget cardTemplate1() {
  return Container(
    color: Colors.black,
    height: 200,
    width: 2000,
    child: Card(
        color: Colors.grey[900],
        margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Row(children: [
          Column(children: [
            SizedBox(height: 10),
            Text("  Order: #162581-9",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("  $status1")]),
            SizedBox(height: 10),
            // ignore: prefer_const_literals_to_create_immutables
            Row(children: [Icon(Icons.alarm), Text("      >2 lbs")]),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("           x 8")]),
          ]),
          Column(children: [
            SizedBox(height: 25),
            Container(
                height: 100,
                width: 250,
                child: Image(
                    image: NetworkImage(
                  'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ))),
            Row(children: [
              SizedBox(
                  height: 40,
                  width: 30,
                  child: FloatingActionButton(
                      onPressed: () {
                        setState() {
                          status1 = "Rejected";
                        }
                      },
                      child: Icon(Icons.cancel_presentation_sharp))),
              Text("     "),
              SizedBox(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                      onPressed: () {
                        setState() {
                          status1 = "Accepted";
                        }
                      },
                      child: Icon(Icons.cancel_presentation_sharp)))
            ])
          ])
        ])),
  );
}

Widget cardTemplate2() {
  return Container(
      color: Colors.black,
      height: 200,
      width: 2500,
      child: Card(
        color: Colors.grey[900],
        margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
        // ignore: sort_child_properties_last
        child: Row(children: [
          Column(children: [
            SizedBox(height: 10),
            Text("  Order: #162581-9",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("  $status2")]),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("      >2 lbs")]),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("           x 8")]),
          ]),
          Column(children: [
            SizedBox(height: 25),
            Container(
                height: 100,
                width: 250,
                child: Image(
                    image: NetworkImage(
                  'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                ))),
            Row(children: [
              SizedBox(
                  height: 40,
                  width: 30,
                  child: FloatingActionButton(
                      onPressed: () {
                        status2 = "Rejected";
                      },
                      child: Icon(Icons.cancel_presentation_sharp))),
              Text("     "),
              SizedBox(
                  height: 30,
                  width: 30,
                  child: FloatingActionButton(
                      onPressed: () {
                        status2 = "Accepted";
                      },
                      child: Icon(Icons.cancel_presentation_sharp)))
            ])
          ])
        ]),
      ));
}

Widget cardTemplate3() {
  return Container(
    color: Colors.black,
    height: 200,
    width: 2500,
    child: Card(
        margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
        child: Row(children: [
          Column(children: [
            SizedBox(height: 10),
            Text("  Order: #162581-9",
                style: TextStyle(fontSize: 16, color: Colors.grey)),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("  $status3")]),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("      >2 lbs")]),
            SizedBox(height: 10),
            Row(children: [Icon(Icons.alarm), Text("           x 8")]),
          ]),
          Column(children: [
            SizedBox(height: 25),
            Container(
                height: 100,
                width: 250,
                child: Image(
                  image: NetworkImage(
                    'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                  ),
                ))
          ]),
          Row(children: [
            SizedBox(
                height: 40,
                width: 30,
                child: FloatingActionButton(
                    onPressed: () {
                      status3 = "Rejected";
                    },
                    child: Icon(Icons.cancel_presentation_sharp))),
            Text("     "),
            SizedBox(
                height: 30,
                width: 30,
                child: FloatingActionButton(
                    onPressed: () {
                      status3 = "Accepted";
                    },
                    child: Icon(Icons.cancel_presentation_sharp)))
          ])
        ]),
        color: Colors.grey[900]),
  );
}

Widget cardTemplate4() {
  return Container(
      color: Colors.black,
      height: 200,
      width: 2500,
      child: Card(
          margin: EdgeInsets.fromLTRB(0, 16, 0, 0),
          child: Row(children: [
            Column(children: [
              SizedBox(height: 10),
              Text("  Order: #162581-9",
                  style: TextStyle(fontSize: 16, color: Colors.grey)),
              SizedBox(height: 10),
              Row(children: [Icon(Icons.alarm), Text("  $status4")]),
              SizedBox(height: 10),
              Row(children: [Icon(Icons.alarm), Text("      >2 lbs")]),
              SizedBox(height: 10),
              Row(children: [Icon(Icons.alarm), Text("           x 8")]),
            ]),
            Column(children: [
              SizedBox(height: 25),
              Container(
                  height: 100,
                  width: 250,
                  child: Image(
                      image: NetworkImage(
                          'https://images.pexels.com/photos/250591/pexels-photo-250591.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'))),
              Row(children: [
                SizedBox(
                    height: 40,
                    width: 30,
                    child: FloatingActionButton(
                        onPressed: () {
                          status4 = "Rejected";
                        },
                        child: Icon(Icons.cancel_presentation_sharp))),
                Text("     "),
                SizedBox(
                    height: 30,
                    width: 30,
                    child: FloatingActionButton(
                        onPressed: () {
                          status4 = "Accepted";
                        },
                        child: Icon(Icons.cancel_presentation_sharp)))
              ])
            ])
          ]),
          color: Colors.grey[900]));
}
