

import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class KelimeBilgi extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<KelimeBilgi> {
  bool selectingmode = false;
  List<Paint> paints = <Paint>[
    Paint(1, 'Dil, konuşanın kendisini ifade etme biçimidir. Türkçede 78 bin ana kelime olmasına karşın, nüfusun büyük bölümü ise günlük yaşamında ortalama 400 civarında kelime kullanıyor. ', Colors.red),
    Paint(2, 'AYIGOVAN  : Kaba saba, görgüsüz insan', Colors.blue),
    Paint(3, 'Göz olarak kullandığımız kelimenin eski kullanışı ise köz. Eski Türkçede g sesinin sonradan dile girmesiyle, köz zaman içerisinde göz kelimesine dönüşmüştür.', Colors.green),
    Paint(4, '"Su uyur düşman uyumaz" olarak bildiğimiz atasözündeki s kelimesinin aslında sü asker kelimesi olduğunu biliyor muydunuz?', Colors.lime),
    Paint(5, 'Kurtuluş kelimesi ise Eski Türkçe kökenli. Bazı kaynaklara göre, "baht, uğur, selamet" anlamındaki kut kökünden türeyen kutgarmak zamanla kurtarmak olmuş. Bir canlıyı felaketten, zordan uzaklaştırmayı, onu kutlu günlere taşımayı anlatmış. ', Colors.indigo),

  
    
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
