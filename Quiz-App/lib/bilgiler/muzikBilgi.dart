

import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class MuzikBilgi extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}
class _MyAppState extends State<MuzikBilgi> {
  bool selectingmode = false;
  List<Paint> paints = <Paint>[
    Paint(1, 'Nota: Seslerin yüksekliklerini (incelik/kalınlık) ve sürelerini göstermeye yarayan işaretlerdir.', Colors.red),
    Paint(2, 'Nota: Seslerin yüksekliklerini (incelik/kalınlık) ve sürelerini göstermeye yarayan işaretlerdir.', Colors.blue),
    Paint(3, 'Ritim: En geniş anlamında, müziğin zaman içinde akışına denir.', Colors.green),
    Paint(4, 'Guinness Rekorlar Kitabı’na göre Beatles’ın unutulmaz şarkısı Yesterday 20. yüzyılda 7 milyon kez coverlandı.', Colors.lime),
    Paint(5, 'Michael Jackson 1958 yılında Indiana da doğmuştur. 1984’te sekiz Grammy kazanmıştır. Bu, bir şarkıcının tek bir yılda kazandığı en çok Grammy ödülüdür.', Colors.indigo),
    Paint(6, 'Bir şarkının favoriniz olmasının sebebi, onu hayatınızdaki duygusal bir olay ile bağdaştırmanızdan dolayıdır.', Colors.yellow),
    Paint(7, 'Queen 1970 yılında kurulmuş tüm dünyada albümleri 300 milyondan fazla satmış İngiliz rock grubudur..', Colors.red),
    Paint(8, '“Happy Birthday to You” şarkısı orijinalinde “Good Morning to You” olarak yazılmıştı.', Colors.blue),
    Paint(9, 'Bugüne kadar ortaya çıkmış toplam 1264 farklı müzik türü vardır.', Colors.green),
    Paint(10, 'Şu anda dinlediğimiz çoğu müzik türünün çıkış noktası Blues’dur', Colors.lime),
    Paint(11, 'Tüm zamanların en iyi gitaristlerinden biri olarak gösterilen Jimi Hendrix 1942 yılında Seattle da doğmuştur.', Colors.indigo),
    Paint(12, 'Dünyada ortalama olarak her 1000 dolarlık albüm satışından, müzisyenler yalnızca 23.40 dolar elde etmektedir..', Colors.yellow),
  
    
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
