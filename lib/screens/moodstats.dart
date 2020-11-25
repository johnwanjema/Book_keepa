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
      body: Stack(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
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
              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  childAspectRatio: 1.8,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  children: <Widget>[
                    statsCard(title: 'Day recorded', count: '74', color: Colors.blue,),
                    statsCard(title: 'Moods recorded' ,count: '88', color: Colors.purple,),
                  ],
                ),
              ),
            ],
          ),
        )
      ]),
    );
  }
}


