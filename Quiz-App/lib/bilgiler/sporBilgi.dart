

import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class SporBilgi extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<SporBilgi> {
  bool selectingmode = false;
  List<Paint> paints = <Paint>[
    Paint(1, '1936 yılına kadar basketbol maçlarında atılan her basketten sonra maça orta sahada yapılan hava atışı ile başlanırdı.', Colors.red),
    Paint(2, '30 Mayıs 2012’de, Guinness Rekorlar Kitabı’na göre en uzun istemli nefes tutan erkek Tom Sietas isimli Alman sporcu olmuştur. Akciğer hacmi normal bir insandan %20 daha geniş olan sporcu tam 22 dakika 22 saniye boyunca su altında, hareketsiz bir şekildeyken nefesini tutmuştur.', Colors.blue),
    Paint(3, 'Dünya görme engelliler hız rekoru, 292,89 km/s ortalama sürat ile Metin Şentürk’e aittir. Bu rekor denemesi sırasında ulaşılan en yüksek sürat ise 303,62 km/s olarak kayıtlara geçmiştir.', Colors.green),
    Paint(4, 'Guinness Rekorlar Kitabı’na göre Beatles’ın unutulmaz şarkısı Yesterday 20. yüzyılda 7 milyon kez coverlandı.', Colors.lime),
    Paint(5, 'Düz bir zeminde hiçbir insan, zıplayarak 1 saniyeden fazla havada kalamaz.', Colors.indigo),
    Paint(6, 'Derbi, aynı kent veya bölgedeki iki takımın uzun süreli karşılaşmalarından doğan geleneksel rekabetidir. Bu sebeple Beşiktaş-Fenerbahçe-Galatasaray arasındaki karşılaşmalar derbi olarak kabul edilirken bu takımların Trabzonspor ile oynadıkları maçlar derbi sayılamaz', Colors.yellow),
    Paint(7, 'Kusursuz hat-trick bir maçta biri sağ ayak, biri sol ayak diğeri ise kafa ile atılan üç gole verilen addır. Michel Platini, Avrupa futbol şampiyonalarında iki kez kusursuz hat-trick yapan ilk ve tek futbolcudur.', Colors.red),

  
    
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
