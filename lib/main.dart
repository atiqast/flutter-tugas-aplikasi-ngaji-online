import 'package:ngaji_o/screens/hal1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "ngaji.o",
    debugShowCheckedModeBanner: false,
    home: new Depan(),
  ));
}

class Depan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: new Image(
                image: NetworkImage(
                    'https://alqolam.com/wp-content/uploads/2016/04/HAFIZ-HAFIZAH-LINE-STICKERS-18.png'),
                    height: 275.0, alignment: Alignment.topCenter,
              ),
            ),
            new Text(
              "NGAJI.O",
              style: new TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
            ),
            new RaisedButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (c) => Hal1()));
              },
              child: Container(
                child: Text('MASUK'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
