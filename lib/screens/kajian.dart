import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: "materi",
    debugShowCheckedModeBanner: false,
    home: new Kajian(),
  ));
}

class Kajian extends StatefulWidget {
  @override
  _KajianState createState() => _KajianState();
}

class _KajianState extends State<Kajian> {
  List<Container> daftarKajian = new List();

  var karakter = [
    {"nama": "Fiqih", "gambar": "fiqih.png"},
    {"nama": "Akhlaq", "gambar": "akhlak.jpg"},
    {"nama": "Bahasa Arab", "gambar": "arab.png"},
    {"nama": "Tarikh", "gambar": "tareh.jpg"},
    {"nama": "Muamalat", "gambar": "muamalah.jpg"},
    {"nama": "Tauhid", "gambar": "tauhid.png"},
  ];

  _buatlist() async {
    for (var i = 0; i < karakter.length; i++) {
      final karakternya = karakter[i];
      final String gambar = karakternya["gambar"];

      daftarKajian.add(new Container(
          padding: new EdgeInsets.all(10.0),
          child: new Card(
              child: new Column(
            children: <Widget>[
              new Hero(
                tag: karakternya['nama'],
                child: new Material(
                  child: new InkWell(
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Detail(
                                nama: karakternya['nama'],
                                gambar: gambar,
                              ),
                        )),
                    child: new Image.asset(
                      "assets/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
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
        title: new Text("Kajian",
            style: new TextStyle(
              color: Colors.white,
            )),
      ),
      body: new GridView.count(crossAxisCount: 2, children: daftarKajian),
    );
  }
}

class Detail extends StatelessWidget {
  Detail({this.nama, this.gambar});
  final String nama;
  final String gambar;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      body: new ListView(
        children: <Widget>[
          new Container(
              height: 240.0,
              child: new Hero(
                tag: nama,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "assets/$gambar",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new BagianNama(
            nama: nama,
          ),
          new Keterangan(),
        ],
      ),
    );
  }
}

class BagianNama extends StatelessWidget {
  BagianNama({this.nama});
  final String nama;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nama,
                  style: new TextStyle(fontSize: 28.0, color: Colors.green),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Keterangan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            "”Menuntut ilmu itu wajib atas setiap muslim”. (HR. Ibnu Majah. Dinilai shahih oleh Syaikh Albani dalam Shahih wa Dha’if Sunan Ibnu Majah no. 224) Dalam hadits ini, Rasulullah shallallahu ‘alaihi wa sallam dengan tegas menyatakan bahwa menuntut ilmu itu hukumnya wajib atas setiap muslim, bukan bagi sebagian orang muslim saja. Lalu, “ilmu” apakah yang dimaksud dalam hadits ini? Penting untuk diketahui bahwa ketika Allah Ta’ala atau Rasul-Nya Muhammad shallallahu ‘alaihi wa sallam menyebutkan kata “ilmu” saja dalam Al Qur’an atau As-Sunnah, maka ilmu yang dimaksud adalah ilmu syar’i (ilmu agama), termasuk kata “ilmu” yang terdapat dalam hadits di atas.",
            style: new TextStyle(fontSize: 18.0),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
