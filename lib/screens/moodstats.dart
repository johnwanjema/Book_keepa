import 'package:book_keepa/widgets/bottomNavItem.dart';
import 'package:book_keepa/widgets/moodsStats.dart';
import 'package:book_keepa/widgets/sliderPage.dart';
import 'package:book_keepa/widgets/statsCard.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

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
                    Icons.account_circle,
                    size: 30,
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
                      title: 'Moods recorded',
                      count: '88',
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
                      percantage: 25,
                    ),
                    moodsCards(
                      color: Colors.green,
                      percantage: 16,
                    ),
                    moodsCards(
                      color: Colors.blueAccent,
                      percantage: 36,
                    ),
                    moodsCards(
                      color: Colors.purple,
                      percantage: 8,
                    ),
                    moodsCards(
                      color: Colors.redAccent,
                      percantage: 15,
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
                Row(
                  children: <Widget>[
                    Container(
                      width: MediaQuery.of(context).size.height * .02,
                      height: MediaQuery.of(context).size.height * .4,
                      child: Text(''),
                      decoration: BoxDecoration(
                          color: Colors.pinkAccent,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(12),
                              bottomRight: Radius.circular(12))),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    sliderPage(color: Colors.redAccent),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.height * .04,
                      height: MediaQuery.of(context).size.height * .4,
                      padding: EdgeInsets.only(top: 25,left: 20),
                      child: Column(
                        children: <Widget>[
                          Text(
                            'v',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                          Text(
                            '2',
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                          Text(
                            'o',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '2',
                            style: TextStyle(color: Colors.white, fontSize: 23),
                          ),
                          Text(
                            'p',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(12),
                              bottomLeft: Radius.circular(12))),
                    ),
                  ],
                ),
                // Container(
                //   height: MediaQuery.of(context).size.height * .4,
                //   child: PageView(
                //     children: <Widget>[
                //       sliderPage(color: Colors.red),
                //       sliderPage(
                //         color: Colors.blue,
                //       ),
                //       // sliderPage(),
                //       // Text('wanjema'),
                //     ],
                //   ),
                // ),
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
                    color: Colors.red,
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
