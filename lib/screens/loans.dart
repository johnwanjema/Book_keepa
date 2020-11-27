import 'package:flutter/material.dart';

class LoansPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loans page',
      home: Scaffold(
        appBar: AppBar(
          elevation: 0.0,
          title: Text('My Loans'),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.assignment_ind,
                color: Colors.black,
              ),
              onPressed: () {
                // do something
              },
            )
          ],
        ),
        body: loansPage(),
      ),
    );
  }
}

class loansPage extends StatefulWidget {
  @override
  _loansPageState createState() => _loansPageState();
}

class _loansPageState extends State<loansPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: <Widget>[
                Container(
                  color: Colors.blue,
                  height: MediaQuery.of(context).size.height * 0.15,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Column(
                        // mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Container(
                            padding: EdgeInsets.all(20),
                            margin:
                                EdgeInsets.only(left: 25, bottom: 15, top: 23),
                            decoration: BoxDecoration(
                                color: Colors.orangeAccent,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(
                              'Unpaid Loans',
                              style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 34,
                      ),
                      Column(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(bottom: 15, top: 23),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(3)),
                            child: Text(
                              'Paid Loans',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.white,
                  padding: EdgeInsets.all(23),
                  child: Row(
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Text(
                            'Current Total \n Loan Balance',
                            style: TextStyle(color: Colors.blue, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        width: 34,
                      ),
                      Column(
                        children: <Widget>[
                          Text(
                            'Ksh. 15,600',
                            style:
                                TextStyle(color: Colors.orange, fontSize: 43),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  height: 234,
                  // color: Colors.red,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Due Date',
                              style: TextStyle(color: Colors.blue),
                            ),
                            Text('Provider',
                                style: TextStyle(color: Colors.blue)),
                            Text('Amount',
                                style: TextStyle(color: Colors.blue)),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            // height: 50,
                            width: 380,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.5),
                                  spreadRadius: 5,
                                  blurRadius: 7,
                                  offset: Offset(
                                      0, 3), // changes position of shadow
                                ),
                              ],
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Row(
                              children: <Widget>[
                                Container(
                                  width: 109,
                                  padding: EdgeInsets.all(20),
                                  decoration: BoxDecoration(
                                    color: Colors.red,
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        bottomLeft: Radius.circular(8)),
                                  ),
                                  child: Text(
                                    '10TH \n MAY',
                                    style: TextStyle(
                                        fontSize: 18, color: Colors.white),
                                  ),
                                ),
                                SizedBox(
                                  width: 40,
                                ),
                                Container(
                                  padding: EdgeInsets.all(20),
                                  // color: Colors.white,
                                  width: 100,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: NetworkImage(
                                          'https://tala.co/wp-content/uploads/2019/05/Tala-logo-horizontal.png'),
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                  // child: NetworkImage(url)
                                ),
                                Container(
                                  padding: EdgeInsets.all(
                                    20,
                                  ),
                                  // color: Colors.black,
                                  child: Text('Ksh, 5,200',
                                      style: TextStyle(fontSize: 18)),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
