import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ozek_proje/arac_konum.dart';
import 'package:ozek_proje/konumum.dart';
import 'package:ozek_proje/para_yukle.dart';
import 'package:ozek_proje/seferler.dart';
import 'package:ozek_proje/sikayet.dart';

import 'hes_kodu.dart';

class AnaSayfa extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ana Sayfa"),
      ),
      body: ListView(
        padding:
            const EdgeInsets.only(left: 10, top: 20, right: 10, bottom: 15),
        children: <Widget>[
          Container(
            height: 50,
            color: Colors.amber[700],
            child: const Center(
              child: Text(
                "1611012058 Numaralı Kart",
                style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Divider(
            color: Colors.black,
            height: 10,
          ),
          FlatButton(
              textColor: Colors.white,
              color: Colors.amber[600],
              child: Text(
                "Para Yükle",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.normal,
                ),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ParaYukle()));
              }),
          Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.black,
            height: 10,
          ),
          FlatButton(
              textColor: Colors.white,
              color: Colors.amber[500],
              padding: const EdgeInsets.all(0.0),
              child: Text(
                "Konumum",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Konumum()));
              }),
          Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.black,
            height: 10,
          ),
          FlatButton(
              textColor: Colors.white,
              color: Colors.amber[500],
              padding: const EdgeInsets.all(0.0),
              child: Text(
                "Araç Konum Sorgulama",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => AracKonumu()));
              }),
          Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.black,
            height: 10,
          ),
          FlatButton(
              textColor: Colors.white,
              color: Colors.amber[400],
              padding: const EdgeInsets.all(0.0),
              child: Text(
                "Hat Sefer Sorgulama",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Seferler()));
              }),
          Divider(
            indent: 15,
            endIndent: 15,
            color: Colors.black,
            height: 10,
          ),
          FlatButton(
              textColor: Colors.white,
              color: Colors.amber[400],
              padding: const EdgeInsets.all(0.0),
              child: Text(
                "Hes Kodu Tanımlama",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.normal),
              ),
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Hes()));
              }),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => Sikayet()));
        },
        child: const Icon(Icons.attach_email),
        backgroundColor: Colors.green,
      ),
    );
  }
}
