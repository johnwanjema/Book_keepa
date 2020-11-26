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
                            margin: EdgeInsets.only(left: 25,bottom: 15 ,top: 23),
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
                            margin: EdgeInsets.only(bottom: 15 ,top: 23),
                            padding: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(3)),
                            child: Text(
                              'Paid Loans',
                              style: TextStyle(color: Colors.white,
                                  fontSize: 16
                              ),
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
                          Text('Current Total \n Loan Balance',style: TextStyle(
                            color: Colors.blue,
                            fontSize: 15
                          ),),
                        ],
                      ),
                      SizedBox(
                        width: 34,
                      ),
                      Column(
                        children: <Widget>[
                          Text('Ksh. 15,600' ,style: TextStyle(
                            color: Colors.orange,
                            fontSize: 43
                          ),),
                        ],
                      ),
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
