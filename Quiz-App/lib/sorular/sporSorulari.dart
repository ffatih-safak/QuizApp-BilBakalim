import 'package:flutter/material.dart';
import 'package:login_page_day_23/class_Sorular/bilimSorulari.dart';
import 'package:login_page_day_23/class_Sorular/genelsorular.dart';
import 'package:login_page_day_23/class_Sorular/kategori.dart';
import 'package:login_page_day_23/class_Sorular/kelimeSoru.dart';
import 'package:login_page_day_23/class_Sorular/muzikSor.dart';
import 'package:login_page_day_23/class_Sorular/sporSoru.dart';
import 'package:login_page_day_23/class_Sorular/tarihSorulari.dart';

import 'package:login_page_day_23/AnaSayfa.dart';
import 'package:login_page_day_23/sabitler.dart';
import 'package:login_page_day_23/soru.dart';
import 'package:login_page_day_23/sorular/bilimSourlari.dart';
import 'package:login_page_day_23/sorular/tarihSorulari.dart';
import 'dart:async';

class SporSorulari extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      
      home: Scaffold(
        
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text("Genel Kültür Testleri"),
          actions: <Widget>[
            IconButton(
                icon: const Icon(Icons.menu),
                tooltip: 'Show Snackbar',
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => AnaSayfa()),
                  );
                }),
          ],
        ),
        backgroundColor: Colors.blueAccent[300],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: SoruSayfasi(),
          ),
        ),
      ),
    );
  }
}


class SoruSayfasi extends StatefulWidget {
  @override
  _SoruSayfasiState createState() => _SoruSayfasiState();
}

class _SoruSayfasiState extends State<SoruSayfasi> {
  List<Widget> secimler = [];
  var dogruSayisi = 0;
  void butonFonksiyon(bool secilenButon) {
    if (soruBittiMi() == true) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          // return object of type Dialog
          return AlertDialog(
            title: new Text("Bravo , Test Bitti"),
            content: new Text("Başa Dönmek İster misiniz?"),
            actions: <Widget>[
              // usually buttons at the bottom of the dialog
              new FlatButton(
                child: new Text("Başa Dön"),
                onPressed: () {
                  setState(() {
                    _start = 90;
                   startTimer();
                    dogruSayisi = 0;
                    soruIndex = 0;
                    secimler = [];
                  });
                  Navigator.of(context).pop();
                },
              ),
              new FlatButton(
                child: new Text("Sonraki Kategoriye Git"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => TarihSorulari()),
                  );
                },
              ),
            ],
          );
        },
      );
    } else {
      setState(() {
        bool dogruYanit = genelSorular.soruBankasi[soruIndex].soruYaniti;

        soruIndex++;
        if (dogruYanit == secilenButon) {
          secimler.add(kDogruIcon);
          dogruSayisi = dogruSayisi + 1;
          if (dogruSayisi == genelSorular.soruBankasi.length) {
            tebrik();
          }
        } else {
          secimler.add(kyanlisIcon);
        }
      });
    }
  }

  bool soruBittiMi() {
    if (soruIndex + 1 >= genelSorular.soruBankasi.length) {
      return true;
    } else {
      return false;
    }
  }
    
    

     ClassSporSorular genelSorular = new ClassSporSorular();
     ClassSporSorularCvp genelSorularCevap = new ClassSporSorularCvp();
  
     
    
  int soruIndex = 0;
  void sorununCevabiniGor() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title:
              Text(genelSorularCevap.soruDogruCevaplari[soruIndex].dogruCevap),
          content: new Text("Genel Kültür Soruları-1"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Tamam"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void tebrik() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // return object of type Dialog
        return AlertDialog(
          title: Text("Tebrikler Hepsi Doğru :)) "),
          content: new Text(" Bilmeye  Devam ..."),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Tamam"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  Timer _timer;
  int _start = 90;
  void startTimer() {
    
    if (_timer != null) {
      
      
    } else {
      _timer = new Timer.periodic(
        const Duration(seconds: 1),
        (Timer timer) => setState(
          () {
            if (_start < 1) {
              timer.cancel();
              sureBitti();
            } else {
              _start = _start - 1;
            }
          },
        ),
      );
    }
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  } 

  void cikis() {
   
    
    
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Çıkış Yapmak İstediğinden emin misin?"),
          content: new Text("Çözdüğünüz Sorular Kayıt Edilmeyecektir."),
          actions: <Widget>[
            new FlatButton(    
              child: new Text("Hayır"),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
            new FlatButton(
              child: new Text("Evet"),            
              onPressed: () {
                _timer.cancel();
                Navigator.push(
                  
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              },
            ),
          ],
        );
      },
    );
  }

  void sureBitti() {
    if(soruIndex + 1 >= genelSorular.soruBankasi.length){ 
      return;
    }else{ 
       showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Süreniz Bitti"),
          content: new Text("AnaSayfaya Dönün"),
          actions: <Widget>[
            new FlatButton(
              child: new Text("Ana Sayfaya Dön"),
              onPressed: () {
                 Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              },
            ),
            
          ],
        );
      },
    );
  }
    }
   
  




 
  @override
  Widget build(BuildContext context) {
    startTimer();
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 4,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                "Puan: $dogruSayisi / "+ genelSorular.soruBankasi.length.toString() +"\n\n\n\n " +
                    genelSorular.soruBankasi[soruIndex].soruMetni +
                    "\n\n\nKalan Süre $_start",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Wrap(
          runSpacing: 3,
          spacing: 3,
          children: secimler,
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.deepPurpleAccent,
                          child: Text("Sorunun Cevabını Gör"),
                          onPressed: () {
                            sorununCevabiniGor();
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red,
                          child: Text("Çıkış"),
                          onPressed: () {
                            cikis();
                          },
                        ))),
              ])),
        ),
        Expanded(
          flex: 1,
          child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 6.0),
              child: Row(children: <Widget>[
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.red[400],
                          child: Icon(
                            Icons.close_sharp,
                            size: 30.0,
                          ),
                          onPressed: () {
                            butonFonksiyon(false);
                          },
                        ))),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 6),
                        child: RaisedButton(
                          padding: EdgeInsets.all(12),
                          textColor: Colors.white,
                          color: Colors.green[400],
                          child: Icon(Icons.done_outline_sharp, size: 30.0),
                          onPressed: () {
                            butonFonksiyon(true);
                          },
                        ))),
              ])),
        )
      ],
    );
  }
}
