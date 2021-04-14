import 'dart:math';
import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class RasgeleBilgi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _random = new Random();
  var data = [
    'İneklerin her sene öldürdüğü insan sayısı, köpek balıklarının öldürdüğü insan sayısından fazladır.',
    'Su samurları uyurken el ele tutuşurlar.',
    'İkinci Dünya Savaşında zarar gören uçakların sayısı, bugün dünya üzerindeki uçakların sayısından daha fazlaydı.',
    'Bebeklerin dört yaşına gelene kadar diz kapakları oluşmaz.',
    'Kuşkonmaz bitkisi bahar döneminde o kadar hızlı büyür ki; gün içerisinde oturup büyüyüşünü izleyebilirsiniz.',
    'Bir şarkının favoriniz olmasının sebebi, onu hayatınızdaki duygusal bir olay ile bağdaştırmanızdan dolayıdır.',
    'Everest Dağında 200 üzerinde ceset var. Bunların hiçbiri de kaldırılmıyor. Hatta yürüyüş yapanlar için işaret görevi görüyor.',
    'Bohemian Rhapsody şarkısını söyleyen kuklalar, YouTube üzerinde 1080p kalitesindeki ilk videoydu.',
    'Norveç ve Kuzey Kore arasında sadece tek bir ülke vardır.',
    'Şu anda dinlediğimiz çoğu müzik türünün çıkış noktası Blues’dur',
    'Rusya, Plütondan daha büyüktür.',
    'Dünyada ortalama olarak her 1000 dolarlık albüm satışından, müzisyenler yalnızca 23.40 dolar elde etmektedir..',
    'Bir şarkının favoriniz olmasının sebebi, onu hayatınızdaki duygusal bir olay ile bağdaştırmanızdan dolayıdır.',
    'Queen 1970 yılında kurulmuş tüm dünyada albümleri 300 milyondan fazla satmış İngiliz rock grubudur..',
    '“Happy Birthday to You” şarkısı orijinalinde “Good Morning to You” olarak yazılmıştı.',
    'Bugüne kadar ortaya çıkmış toplam 1264 farklı müzik türü vardır.',
    'Şu anda dinlediğimiz çoğu müzik türünün çıkış noktası Blues’dur',
    'Tüm zamanların en iyi gitaristlerinden biri olarak gösterilen Jimi Hendrix 1942 yılında Seattle da doğmuştur.',
    'Dünyada ortalama olarak her 1000 dolarlık albüm satışından, müzisyenler yalnızca 23.40 dolar elde etmektedir..',
  ];

  var listToShow = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: Text(
          "Rasgele Bilgiler",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.home),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AnaSayfa()),
                );
              }),
        ],
      ),
      
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 75,
          
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(left: 28.0),
                icon: Icon(Icons.refresh),
                onPressed: () {
                  setState(() {
                    updateDataInList();
                  });
                },
              ),
              Text(
                "Rasgele veya Tüm Bilgileri Getir ",
                style: TextStyle(color: Colors.black),
              ),
              IconButton(
                iconSize: 30.0,
                padding: EdgeInsets.only(right: 28.0),
                icon: Icon(Icons.all_inclusive),
                onPressed: () {
                  setState(() {
                    showAllData();
                  });
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView.builder(
        itemCount: listToShow.length,
        itemBuilder: (context, i) {
          return Ink(
            color: Colors.white,
            child: ListTile(
              title: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  listToShow[i].toString(),
                  style: TextStyle(color: Colors.blueGrey, fontSize: 20,fontWeight: FontWeight.bold),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
  void updateDataInList() {
    listToShow =
        new List.generate(10, (_) => data[_random.nextInt(data.length)]);
  }
  void showAllData() {
    listToShow = data;
  }
}
