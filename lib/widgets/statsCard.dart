import 'package:flutter/material.dart';

class statsCard extends StatelessWidget {
  final String title;
  final Color color;
  final String count;
  const statsCard({
    Key key,
    @required this.size, this.title, this.color, this.count,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size; //give height and width of device
    return Container(
      padding: EdgeInsets.all(20),
      height: size.height * .15,
      decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(13)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text( title,
              textAlign: TextAlign.center,
              style:
              TextStyle(fontSize: 16, color: Colors.white)),
          SizedBox(
            height: 5,
          ),
          Text(count,
              textAlign: TextAlign.center,
              style:
              TextStyle(fontSize: 23, color: Colors.white)),
        ],
      ),
    );
  }
}