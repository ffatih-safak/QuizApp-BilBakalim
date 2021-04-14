import 'package:flutter/material.dart';
import 'package:login_page_day_23/aciklama.dart';
import 'package:login_page_day_23/bilgiler/GenelSoruBilgi.dart';
import 'package:login_page_day_23/bilgiler/bililmBilgi.dart';
import 'package:login_page_day_23/bilgiler/kelimeBilgi.dart';
import 'package:login_page_day_23/bilgiler/muzikBilgi.dart';
import 'package:login_page_day_23/bilgiler/sporBilgi.dart';
import 'package:login_page_day_23/bilgiler/tarihbilgi.dart';
import 'package:login_page_day_23/AnaSayfa.dart';
import 'RasgeleBilgi.dart';
import 'UygulamaHakkında.dart';
import 'iletişim.dart';
import 'main.dart';

class BilgiSayfasi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(
          "Kısa Bilgiler",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              tooltip: 'Air it',
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              }),
        ],
      ),
      
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              child: Align(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Icon(
                      Icons.stacked_bar_chart,
                      color: Colors.white,
                      size: 100.0,
                    ),
                    Text(
                      "Bil Bakalım",
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
                ListTile(
              leading: Icon(Icons.home),
              title: Text('Anasayfa'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              },
            ),
            ExpansionTile(
              leading: Icon(Icons.article_rounded),
              title: Text('Kısa Bilgiler'),
              trailing: Icon(Icons.arrow_drop_down),
              children: <Widget>[
                ListTile(
                  title: Text('Genel'),
                  trailing: Icon(Icons.pie_chart),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GenelBilgiler()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Bilim'),
                  trailing: Icon(Icons.science),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => BilimBilgi()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Tarih'),
                  trailing: Icon(Icons.history),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => TarihBilgiler()),
                    );
                  },
                ),
                ListTile(
                  title: Text('Spor'),
                  trailing: Icon(Icons.sports_football),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => GenelBilgiler()),
                    );
                  },
                ),
                  ListTile(
                  title: Text('Kelime'),
                  trailing: Icon(Icons.wb_auto_rounded),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => KelimeBilgi()),
                    );
                  },
                ),
              ],
            ),
                 ListTile(
              leading: Icon(Icons.find_replace_sharp),
              title: Text('Rasgele Bilgi'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RasgeleBilgi()),
                );
              },
            ),  
           
            ListTile(
              leading: Icon(Icons.star),
              title: Text('Bize Puan Ver'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UygulamaHakkinda()),
                );
              },
            ),
              ListTile(
              leading: Icon(Icons.badge),
              title: Text('İletişim'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Iletisim()),
                );
              },
            ),
            
            ListTile(
              leading: Icon(Icons.assistant_photo),
              title: Text('Biz Kimiz'),
              trailing: Icon(Icons.arrow_right),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aciklama()),
                );
              },
            ),
          ],
        ),
      ),
      body: new Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: new GridView.count(
        primary: false,
        padding: const EdgeInsets.all(30),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 1,
        children: <Widget>[
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GenelBilgiler()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/giris.png'),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    color: Color(0xDD0085FE),
                    child: new Text(
                      "Genel Kısa Bilgiler",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => TarihBilgiler()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/tarih.png'),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    color: Color(0xDD0085FE),
                    child: new Text(
                      "Tarih Kısa Bilgiler",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SporBilgi()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/spor.png'),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    color: Color(0xDD0085FE),
                    child: new Text(
                      "Spor Kısa Bilgiler",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BilimBilgi()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/bilim.png'),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    color: Color(0xDD0085FE),
                    child: new Text(
                      "Bilim Kısa Bilgiler",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => KelimeBilgi()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/kelime.png'),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    color: Color(0xDD0085FE),
                    child: new Text(
                      "Kelime Kısa Bilgiler",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            new GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MuzikBilgi()),
                );
              },
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: new AssetImage('assets/muzik.png'),
                      fit: BoxFit.cover),
                ),
                padding: const EdgeInsets.all(8),
                alignment: Alignment.bottomCenter,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.skewY(0.0)..rotateZ(0.0),
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    color: Color(0xDD0085FE),
                    child: new Text(
                      "Müzik Kısa Bilgiler",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
            ),
        ],
      ),
          )),
    );
  }
}
