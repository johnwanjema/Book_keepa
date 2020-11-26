import 'package:book_keepa/widgets/bottomNavItem.dart';
import 'package:book_keepa/widgets/moodsStats.dart';
import 'package:book_keepa/widgets/sliderPage.dart';
import 'package:book_keepa/widgets/statsCard.dart';
import 'package:flutter/material.dart';

class moodStats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mood Stats',
      home: Scaffold(
          appBar: AppBar(
              bottomOpacity: 0.0,
              elevation: 0.0,
              backgroundColor: Colors.white,
              actions: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.verified_user,
                    color: Colors.black,
                  ),
                  onPressed: () {
                    // do something
                  },
                )
              ],
              title: RichText(
                text: new TextSpan(
                  // Note: Styles for TextSpans must be explicitly defined.
                  // Child text spans will inherit styles from parent
                  style: new TextStyle(
                    fontSize: 14.0,
                    color: Colors.black,
                  ),
                  children: <TextSpan>[
                    new TextSpan(
                        text: 'Hali',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.orange)),
                    new TextSpan(
                        text: ' Me',
                        style: new TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)),
                  ],
                ),
              )),
          body: moodsStats()),
    );
  }
}

class moodsStats extends StatefulWidget {
  @override
  _moodsStatsState createState() => _moodsStatsState();
}

class _moodsStatsState extends State<moodsStats> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //give height and width of device
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Container(
            color: Colors.white,
            height: MediaQuery.of(context).size.height * 1.7,
            padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Icon(
                          Icons.arrow_back_ios,
                          size: 40,
                          color: Colors.black,
                        )
                      ],
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Mood stats',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 33,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        Text(
                          'Overview',
                          style: TextStyle(
                              color: Colors.blue,
                              fontSize: 23,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Weekly',
                          style: TextStyle(
                              fontSize: 23, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    Column(
                      children: <Widget>[
                        Text('Monthly',
                            style: TextStyle(
                                fontSize: 23, fontWeight: FontWeight.bold))
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    statsCard(
                      title: 'Day recorded',
                      count: '74',
                      color: Colors.blue,
                    ),
                    statsCard(
                      title: 'Day recorded',
                      count: '74',
                      color: Colors.deepPurple,
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Overall Mood Performance',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                SizedBox(
                  height: 10,
                ),
                Wrap(
                  runSpacing: 10.0,
                  spacing: 10.0,
                  children: <Widget>[
                    moodsCards(
                      color: Colors.orange,
                    ),
                    moodsCards(
                      color: Colors.green,
                    ),
                    moodsCards(
                      color: Colors.blueAccent,
                    ),
                    moodsCards(
                      color: Colors.purple,
                    ),
                    moodsCards(
                      color: Colors.redAccent,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'Tag Analysis',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: MediaQuery.of(context).size.height * .4,
                  child: PageView(
                    children: <Widget>[
                      sliderPage(),
                      sliderPage(),
                      // sliderPage(),
                      // Text('wanjema'),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 70,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  spreadRadius: 2,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                )
              ]),
              margin: EdgeInsets.only(top: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  BottomNavItem(
                    icon: Icons.my_location,
                  ),
                  BottomNavItem(
                    icon: Icons.insert_emoticon,
                  ),
                  BottomNavItem(
                    icon: Icons.home,
                  ),
                  BottomNavItem(
                    icon: Icons.accessibility,
                  ),
                  BottomNavItem(
                    icon: Icons.cloud_download,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}




