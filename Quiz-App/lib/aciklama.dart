import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class Aciklama extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: MyTextPage());
  }
}

class MyTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hakkımızda"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.format_align_right_outlined),
              tooltip: 'Air it',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              }),
        ],
      ),
     
      body: Container(
        margin: EdgeInsets.all(20),
        child: Center(
          child: RichText(
            text: TextSpan(
                text:
                    'Bu uygulama Dr. Öğretim Üyesi Ahmet Cevahir ÇINAR tarafından yürütülen 3311456 kodlu  MOBİL PROGRAMLAMA dersi kapsamında 193311043 numaralı Furkan Fatih ŞAFAK tarafından 30 Nisan 2021 günü yapılmıştır.',
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: <TextSpan>[
                  TextSpan(
                      text: '\n\nSELÇUK ÜNİVERSİTESİ',
                      style: TextStyle(color: Colors.amber, fontSize: 20),
                      )
                ]),
          ),
        ),
      ),

    );
  }
  
}



