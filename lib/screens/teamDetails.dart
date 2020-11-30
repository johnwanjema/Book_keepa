import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class TeamDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        actions: <Widget>[
          Row(
            children: <Widget>[
              InkWell(
                onTap: () {
                  showSearch(context: context, delegate: Search());
                },
                child: Text(
                  'Search',
                  style: TextStyle(fontSize: 23),
                ),
              ),
              IconButton(
                onPressed: () {
                  showSearch(context: context, delegate: Search());
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                  size: 30,
                ),
              ),
            ],
          )
        ],
      ),
      body: appBody(),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            Container(
              height: 100,
              child: DrawerHeader(
                child: Text(
                  'PHLOEM',
                  style: TextStyle(fontSize: 23),
                ),
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.verified_user),
              title: Text('Teams'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.business_center),
              title: Text('Supplies & Services'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.access_alarm),
              title: Text('Requests'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Admin Centre'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.supervised_user_circle),
              title: Text('Account'),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}

class Search extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return <Widget>[
      IconButton(
        onPressed: () {
          Navigator.pop(context);
        },
        icon: Icon(Icons.close),
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      child: Center(
        child: Text('search'),
      ),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          'Search User Details',
          style: TextStyle(fontSize: 23),
        ),
      ),
    );
  }
}

class appBody extends StatefulWidget {
  @override
  _appBodyState createState() => _appBodyState();
}

class _appBodyState extends State<appBody> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                padding: EdgeInsets.all(8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'The Biology Group',
                      style: TextStyle(
                          fontSize: 23,
                          color: Colors.blue,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                        'Lorem ipsum dolor sit amet, consectetur adipiscing elit,sed'),
                  ],
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                // color: Colors.white,
                width: MediaQuery.of(context).size.width,
                // padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.blueAccent,
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
                      child: Text('Verified'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: Colors.greenAccent,
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
                      child: Text('Active'),
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
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
                      ),
                      child: Text(
                        '20 Requests',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                    Container(
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
                      ),
                      padding: EdgeInsets.all(10),
                      child: Text(
                        '20 Supplies',
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                // color: Colors.white,
                padding: EdgeInsets.all(10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'Members 40',
                      style: TextStyle(fontSize: 20,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                    Text(
                      'Verification Documents',
                      style: TextStyle(fontSize: 16,color: Colors.grey),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: MediaQuery.of(context).size.width,
                    ),
                    child: Wrap(
                      alignment: WrapAlignment.center,
                      runSpacing: 20.0, // distance between rows
                      spacing: 30.0, // distance between chips
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
                          height: MediaQuery.of(context).size.height * .3,
                          width: MediaQuery.of(context).size.width,
                          child: Card(
                            elevation: 5,
                            child: Padding(
                              padding: EdgeInsets.all(7),
                              child: Stack(children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Icon(
                                          Icons.supervised_user_circle,
                                          size: 50,
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Name :',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              'John Doe',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Phone Number:',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              '+254 712 345 678',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                        Row(
                                          children: <Widget>[
                                            Text(
                                              'Email :',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                            Text(
                                              'jdoe@biology.com',
                                              style: TextStyle(fontSize: 16),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      width: 15,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 70),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Text(
                                            'Request : 20',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                          SizedBox(
                                            height: 15,
                                          ),
                                          Text(
                                            'Uploads : 20',
                                            style: TextStyle(fontSize: 16),
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // SingleChildScrollView(
              //   child
              // ),
            ],
          ),
        ],
      ),
    );
  }
}
