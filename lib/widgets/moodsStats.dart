import 'package:flutter/material.dart';

class moodsCards extends StatelessWidget {
  final Color color;
  final int percantage;
  final int days;
  final int recordings;
  const moodsCards({
    Key key,
    this.color,
    this.percantage, this.days, this.recordings,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      // color: Colors.orange,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(13),
      ),
      child: Row(
        children: <Widget>[
          Container(
            height: 42,
            width: 43,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(80),
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
                    ' Great Mood \n '+ days.toString()+ ' Days '+ recordings.toString() +' Recordings',
                    style: TextStyle(color: Colors.white, fontSize: 18),
                  ),
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 23),
                    child: Text(
                      percantage.toString() + '%',
                      style: TextStyle(color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 25),
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
