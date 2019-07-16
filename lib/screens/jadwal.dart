import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "jadwal",
    debugShowCheckedModeBanner: false,
    home: new Jadwal(),
  ));
}

class Jadwal extends StatefulWidget {
  @override
  _JadwalState createState() => _JadwalState();
}

class _JadwalState extends State<Jadwal> {
  List<Container> daftarJadwal = new List();

  var karakter = [
    {"nama": "Malam Ahad", "gambar": "fiqih.png"},
    {"nama": "Malam Senin", "gambar": "akhlak.jpg"},
    {"nama": "Malam Selasa", "gambar": "arab.png"},
    {"nama": "Malam Rabu", "gambar": "tareh.jpg"},
    {"nama": "Malam Kamis", "gambar": "muamalah.jpg"},
    {"nama": "Malam Sabtu", "gambar": "tauhid.png"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarJadwal.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
            children: <Widget>[
              new Hero(
                tag: karakternya['nama'],
                    child: new Image.asset(
                      "assets/$gambar",
                      fit: BoxFit.cover,
                    ),
              ),
              new Padding(
                padding: new EdgeInsets.all(10.0),
              ),
              new Text(
                karakternya['nama'],
                style: new TextStyle(fontSize: 20.0),
              )
            ],
          ))));
    }
  }

  @override
  void initState() {
    _buatlist();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.green,
        title: new Text("Jadwal Kajian",
            style: new TextStyle(
              color: Colors.white,
            )),
      ),
      body: new GridView.count(crossAxisCount: 2, children: daftarJadwal),
    );
  }
}