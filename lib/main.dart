import 'dart:async';
import 'package:book_keepa/screens/moodstats.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Book Keepa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:  3), openHome);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Center(
        child: Container(
            child: Text('Book Keepa',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w500
            ),),
        ),
      ),
    );
  }
  void openHome(){
    Navigator.push(context, MaterialPageRoute(builder: (context)=>moodStats()));
  }
}










