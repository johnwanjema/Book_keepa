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
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              // SizedBox(height: size.height * .005),
              Text(
                'Moods Stats',
                style: Theme.of(context)
                    .textTheme
                    .headline4
                    .copyWith(fontWeight: FontWeight.w900),
              ),
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
                        style:
                            TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
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

              
            ],
          )
        ]),
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
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text(
                      '25%',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 23),
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
