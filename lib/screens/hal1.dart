import 'package:flutter/material.dart';

import 'kajian.dart';
import 'jadwal.dart';
import 'materi.dart';
import 'pesan.dart';

void main() {
  runApp(new MaterialApp(
    title: 'hal1',
    debugShowCheckedModeBanner: false,
    home: new Hal1(),
  ));
}

class Hal1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'hal1',
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.greenAccent,
            appBar: new AppBar(
              backgroundColor: Colors.green,
              leading: new IconButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: Icon(Icons.home),
              ),
              title: new Center(
                child: new Text(
                  "Ngaji.o",
                  style: new TextStyle(
                    fontSize: 24.0,
                  ),
                ),
              ),
              actions: <Widget>[
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search),
                )
              ],
              elevation: 3.0,
            ),
            body: Container(
              padding: new EdgeInsets.all(20.0),
              child: new Center(
                child: new Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    new Card(
                      child: new Column(
                        children: <Widget>[
                          new IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Kajian();
                              }));
                            },
                            icon: new Icon(
                              Icons.restore_page,
                              size: 50.0,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: new Text(
                              "Kajian",
                              style: new TextStyle(
                                fontSize: 20.0,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Card(
                      child: new Column(
                        children: <Widget>[
                          new IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Materi();
                              }));
                            },
                            icon: new Icon(
                              Icons.book,
                              size: 50.0,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: new Text(
                              "Materi Kajian",
                              style: new TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Card(
                      child: new Column(
                        children: <Widget>[
                          new IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Jadwal();
                              }));
                            },
                            icon: new Icon(
                              Icons.calendar_today,
                              size: 50.0,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: new Text(
                              "Jadwal Kajian",
                              style: new TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    new Card(
                      child: new Column(
                        children: <Widget>[
                          new IconButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return Pesan();
                              }));
                            },
                            icon: new Icon(
                              Icons.chat_bubble_outline,
                              size: 50.0,
                              color: Colors.green,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: new Text(
                              "Diskusi",
                              style: new TextStyle(fontSize: 20.0),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Image(
                        image: NetworkImage(
                            'https://alqolam.com/wp-content/uploads/2016/04/HAFIZ-HAFIZAH-LINE-STICKERS-18.png'),
                      height: 197.0, alignment: Alignment.bottomRight,
                      ),
                    ),
                  ],
                ),
              ),
            )));
  }
}
