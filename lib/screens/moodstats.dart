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
              backgroundColor: Colors.transparent,
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
      // bottomNavigationBar: ,
      body: SingleChildScrollView(
        child: Stack(children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // SizedBox(height: size.height * .005),
              RichText(
                text: TextSpan(
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  children: [
                    WidgetSpan(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2.0),
                        child: Icon(Icons.arrow_back),
                      ),
                    ),
                    TextSpan(text: 'Moods Stats'),
                  ],
                ),
              ),
              // Text(
              //   'Moods Stats',
              //   style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              // ),
              SizedBox(
                height: 20,
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
                height: 15,
              ),
              Wrap(
                spacing: 24,
                children: <Widget>[
                  statsCard(
                    title: 'Day recorded',
                    count: '74',
                    color: Colors.blue,
                  ),
                  statsCard(
                    title: 'Moods recorded',
                    count: '88',
                    color: Colors.purple,
                  ),
                ],
              ),
              Text(
                'Overall Mood Performance',
              ),
              SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Wrap(
                  runSpacing: 10.0,
                  spacing: 10.0,
                  children: <Widget>[
                    moodsCards(),
                    moodsCards(),
                    moodsCards(),
                    moodsCards(),
                    moodsCards(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Tag Analysis',style: TextStyle(
                  fontSize: 23,
                  fontWeight:  FontWeight.bold
                ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
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
              )
            ],
          )
        ]),
      ),
    );
  }
}

class sliderPage extends StatelessWidget {
  const sliderPage({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: Colors.purple,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Other Places',
                    style: TextStyle(
                        fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    '20 Days 22 Recordings',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                // mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(left: 100),
                    child: Icon(
                      Icons.map,
                      size: 50,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.,
                children: <Widget>[
                  Text(
                    '25%',
                    style: TextStyle(
                        fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Great Mood',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '25%',
                    style: TextStyle(
                        fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Great Mood',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '25%',
                    style: TextStyle(
                        fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Great Mood',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.,
                children: <Widget>[
                  Text(
                    '25%',
                    style: TextStyle(
                        fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Great Mood',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '25%',
                    style: TextStyle(
                        fontSize: 23, color: Colors.white),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Great Mood',
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}

class moodsCards extends StatelessWidget {
  const moodsCards({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      // color: Colors.orange,
      decoration: BoxDecoration(
        color: Colors.orange,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 42,
            width: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(13),
              image: DecorationImage(
                image: NetworkImage(
                    'https://i.pinimg.com/originals/23/83/b8/2383b8c0a126d1d6e45c69e1f1d8c835.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Text(
                    ' Great Mood \n  20 Days 22 Recordings',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text(
                      '25%',
                      style: TextStyle(color: Colors.white, fontSize: 23),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
