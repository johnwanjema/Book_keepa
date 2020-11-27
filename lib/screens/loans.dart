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
      bottomNavigationBar: Container(
        color: Colors.blue,
        child: Row(

          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width * 0.33,
                padding: EdgeInsets.all(23),
                color: Colors.orangeAccent,
                child: Icon(
                  Icons.monetization_on,
                  color: Colors.white,
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.33,
                padding: EdgeInsets.all(23),
                color: Colors.blue,
                child: Icon(
                  Icons.home,
                  color: Colors.white,
                )),
            Container(
                width: MediaQuery.of(context).size.width * 0.33,
                padding: EdgeInsets.all(23),
                color: Colors.blue,
                child: Icon(
                  Icons.pie_chart,
                  color: Colors.white,
                )),
          ],
        ),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
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
                              margin: EdgeInsets.only(
                                  left: 25, bottom: 15, top: 23),
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
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
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
                              style:
                                  TextStyle(color: Colors.blue, fontSize: 15),
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
                    // height: 1000,
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
                        providerDetails(
                          color: Colors.red,
                          imageUrl:
                              'https://tala.co/wp-content/uploads/2019/05/Tala-logo-horizontal.png',
                          amount: '5200',
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        providerDetails(
                            color: Colors.orangeAccent,
                            imageUrl:
                                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQJQVj4t8bhrIjp20bGcqJKq6BGLn0HUw0Y-w&usqp=CAU',
                            amount: '2,500'),
                        SizedBox(
                          height: 10,
                        ),
                        providerDetails(
                            color: Colors.blue,
                            imageUrl:
                                'https://d2c5ectx2y1vm9.cloudfront.net/assets/logo-5a6f97f580a4f616c2d8eaee20ed2326c2bb68596e1aeb1d9b3364a2f1e6ae1b.png',
                            amount: '3,400'),
                        SizedBox(
                          height: 10,
                        ),
                        providerDetails(
                            color: Colors.blue,
                            imageUrl:
                                'https://1.bp.blogspot.com/-z273SXbpMB0/XwXYCoMcL5I/AAAAAAAAGpo/Y3TrlB9nPSsGC5s9FEY0jMFIF8DPs8yNwCNcBGAsYHQ/s1600/images-12.jpeg',
                            amount: '4,500'),
                        // providerDetails(),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class providerDetails extends StatelessWidget {
  final String imageUrl;
  final Color color;
  final String amount;
  const providerDetails({
    Key key,
    this.imageUrl,
    this.color,
    this.amount,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        //
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
                offset: Offset(0, 3), // changes position of shadow
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
                  color: color,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8),
                      bottomLeft: Radius.circular(8)),
                ),
                child: Text(
                  '10TH \n MAY',
                  style: TextStyle(fontSize: 18, color: Colors.white),
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
                    image: NetworkImage(imageUrl),
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
                child: Text('Ksh $amount', style: TextStyle(fontSize: 18)),
              )
            ],
          ),
        )
      ],
    );
  }
}
