

import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class TarihBilgiler extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<TarihBilgiler> {
  List<Paint> paints = <Paint>[
    Paint(
        1,
        'Birinci Dünya Savaşı esnasında bir mesaj güvercini bir ayağını ve gözünü kaybedip göğsünden vurulmasına karşın mesajı ulaştırmıştır. Bu 194 askerin hayatını kurtarmıştır.',
        Colors.red),
    Paint(
        2,
        '1954 yılında Sovyetler Birliği Amerika’ya Bering Geçiti’ni kapatmak için yaklaşık 90kmlik bir set çekmeyi önermiştir. Sovyet bilim adamları bu setin Kore’yi ve Japan Denizi’ne akan kutup soğunu kesip o bölgeleri 30 dereceye kadar ısıtabileceğini iddia etmişlerdir. Amerika proje teklifini uygulanabilir olmadığından dolayı reddetmiştir.',
        Colors.blue),
    Paint(3, 'Sokrat’ın bugüne kadar gelen hiçbir eser ve çalışmasının kopyası yoktur. Sokrat hakkındaki her şey Ksenofon, Aristo ve Aristofanes’in yorumlarıyla birlikte Plato tarafından yazılmıştır.',
        Colors.green),
    Paint(
        4,
        'Shakespeare’in oyunları o kadar popülerdi ki oyunlarının korsan kopyaları basılırdı. Muhbirler bir oyununa gidip oyundaki bütün içeriği hızlıca konuşulduğu gibi not alırlardı. Muhbirlerin yazarken yaptığı hatalardan dolayı korsan kopyalarda sık sık hatalar olurdu.',
        Colors.lime),
    Paint(
        5,
        '1952 yılında Albert Einstein’a İsrail Devleti’nin başkanlığı teklif edilmiştir. Nesnel gerçeklerin üstesinden gelmek için bilim adamı olarak yetiştirildiğini, insanların üstesinden gelme konusunda ise yetenek ve tecrübe eksikliği olduğunu söyleyerek teklifi reddetmiştir.',
        Colors.indigo),
    Paint(6, 'Dünyada günde yaklaşık 153 bin insan ölmektedir.', Colors.yellow),
    Paint(
        7,
        '1888 - 1981 yılları arasında yasamış New York eyaleti ve New York şehri belediyesinde toplam 44 yıl görev almış bürokrat.',
        Colors.red),
    Paint(
        8,
        'Tarihte bilinen ilk cankurtaran / ambulans, 1792 yılında Napolyon‘un özel cerrahı Baron Dominique Jean Larrey tarafından yapılmış.Aracın tabut şeklinde olması pek manidar',
        Colors.blue),
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
