import 'dart:async';
import 'package:book_keepa/screens/loans.dart';
import 'package:book_keepa/screens/moodstats.dart';
import 'package:book_keepa/screens/teamDetails.dart';
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
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            card(title: 'Loans Page',),
            SizedBox(
              height: 20,
            ),
            card(title: 'Moods Page',),
            SizedBox(
              height: 20,
            ),
            card(title: 'Dashboard Page',),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final String title;
  const card({
    Key key, this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .75,
      padding: EdgeInsets.symmetric(vertical: 30, horizontal: 80),
      decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withOpacity(0.2),
                offset: Offset(0, 9),
                blurRadius: 20,
                spreadRadius: 3)
          ]),
      child: Text(
        title,
        style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w500),
      ),
    );
  }
}
