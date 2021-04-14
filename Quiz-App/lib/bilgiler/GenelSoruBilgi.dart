

import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class GenelBilgiler extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<GenelBilgiler> {
  List<Paint> paints = <Paint>[
    Paint(
        1,
        'Uykusuz kalmak zihninizde aslında hiç yaşanmamış hatıralar yaratmanıza neden oluyor.',
        Colors.red),
    Paint(
        2,
        'Sultan I. İbrahim, cariyelerinden hangisinin başka bir adamla ilişkisini olduğunu öğrenemeyince 280 cariyesinin hepsini birden boğdurduğu iddia ediliyor.',
        Colors.blue),
    Paint(3, 'Yemek yedikten sonra Burma Pitonu nun kalbi %40 oranında büyür.',
        Colors.green),
    Paint(
        4,
        'İnsan vücudu su altında yeryüzünde olduğundan 4 kat daha hızlı çürür.',
        Colors.lime),
    Paint(
        5,
        'Hipotermi konusunda önemli deneylerin çoğu 2. Dünya Savaşı sırasında Naziler tarafından yapılmıştır.',
        Colors.indigo),
    Paint(6, 'Dünyada günde yaklaşık 153 bin insan ölmektedir.', Colors.yellow),
    Paint(
        7,
        'Uykusuz kalmak zihninizde aslında hiç yaşanmamış hatıralar yaratmanıza neden oluyor.',
        Colors.red),
    Paint(
        8,
        'Sultan I. İbrahim, cariyelerinden hangisinin başka bir adamla ilişkisini olduğunu öğrenemeyince 280 cariyesinin hepsini birden boğdurduğu iddia ediliyor.',
        Colors.blue),
    Paint(9, 'Yemek yedikten sonra Burma Pitonu nun kalbi %40 oranında büyür.',
        Colors.green),
    Paint(
        10,
        'İnsan vücudu su altında yeryüzünde olduğundan 4 kat daha hızlı çürür.',
        Colors.lime),
    Paint(
        11,
        'Hipotermi konusunda önemli deneylerin çoğu 2. Dünya Savaşı sırasında Naziler tarafından yapılmıştır.',
        Colors.indigo),
    Paint(
        12, 'Dünyada günde yaklaşık 153 bin insan ölmektedir.', Colors.yellow),
    Paint(
        13,
        'Uykusuz kalmak zihninizde aslında hiç yaşanmamış hatıralar yaratmanıza neden oluyor.',
        Colors.red),
    Paint(
        14,
        'Sultan I. İbrahim, cariyelerinden hangisinin başka bir adamla ilişkisini olduğunu öğrenemeyince 280 cariyesinin hepsini birden boğdurduğu iddia ediliyor.',
        Colors.blue),
    Paint(15, 'Yemek yedikten sonra Burma Pitonu nun kalbi %40 oranında büyür.',
        Colors.green),
    Paint(
        16,
        'İnsan vücudu su altında yeryüzünde olduğundan 4 kat daha hızlı çürür.',
        Colors.lime),
    Paint(
        17,
        'Hipotermi konusunda önemli deneylerin çoğu 2. Dünya Savaşı sırasında Naziler tarafından yapılmıştır.',
        Colors.indigo),
    Paint(
        18, 'Dünyada günde yaklaşık 153 bin insan ölmektedir.', Colors.yellow),
  ];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
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
          title: Text("Bil Bakalım Bilgi Kütüphanesi"),
        ),
        body: ListView(
          children: List.generate(paints.length, (index) {
            return ListTile(
              leading: GestureDetector(  
                onTap: () {},
                child: Container(
                  width: 48,
                  height: 48,
                  padding: EdgeInsets.symmetric(vertical: 4.0),
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: paints[index].colorpicture,
                  ),
                ),
              ),
              title: Text(
                'Bilgi: ' + paints[index].id.toString(),
                style: TextStyle(fontSize: 25),
              ),
              subtitle:
                  Text(paints[index].title, style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
            );
          }),
        ),
      ),
    );
  }
}

class Paint {
  final int id;
  final String title;
  final Color colorpicture;
  Paint(this.id, this.title, this.colorpicture);
}
