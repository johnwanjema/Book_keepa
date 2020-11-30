import 'package:flutter/material.dart';

class sliderPage extends StatelessWidget {
  final Color color;
  const sliderPage({
    Key key,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width * .75,
      height: MediaQuery.of(context).size.height * .4,
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(13),
        color: color,
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
                    style: TextStyle(fontSize: 23, color: Colors.white),
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
                    padding: const EdgeInsets.only(left: 60),
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
                children: <Widget>[
                  Text(
                    '25%',
                    style: TextStyle(fontSize: 23, color: Colors.white),
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
                    style: TextStyle(fontSize: 23, color: Colors.white),
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
                    style: TextStyle(fontSize: 23, color: Colors.white),
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
                children: <Widget>[
                  Text(
                    '25%',
                    style: TextStyle(fontSize: 23, color: Colors.white),
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
                    style: TextStyle(fontSize: 23, color: Colors.white),
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
