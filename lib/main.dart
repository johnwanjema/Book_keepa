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
      appBar: AppBar(
        title: Text('Pages Design'),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 70,
            ),
            card(
              title: 'Loans Page',
              page: LoansPage(),
            ),
            SizedBox(
              height: 20,
            ),
            card(
              title: 'Moods Page',
              page: moodStats(),
            ),
            SizedBox(
              height: 20,
            ),
            card(
              title: 'Dashboard Page',
              page: TeamDetails(),
            ),
          ],
        ),
      ),
    );
  }
}

class card extends StatelessWidget {
  final String title;
  final page;
  const card({
    Key key,
    this.title,
    this.page,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
      child: Container(
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
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
