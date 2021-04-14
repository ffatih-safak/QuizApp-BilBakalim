

import 'package:flutter/material.dart';
import 'package:login_page_day_23/AnaSayfa.dart';

class BilimBilgi extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BilimBilgi> {
  bool selectingmode = false;
  List<Paint> paints = <Paint>[
    Paint(1, ' Eğer bir fotoğrafta bir insan gözüne yeterli miktarda zum yaparsanız, bu insanın gözüne düşen görüntüleri görebilirsiniz', Colors.red),
    Paint(2, 'Bir kuyrukluyıldızın üzerinde geçirilecek 64 saat, bu yıldız hakkında temel bilgileri bir araya getirmek için yeterli.', Colors.blue),
    Paint(3, 'Samanyolu Galaksisi ne en az 100.000 tane komşu galaksi bulunuyor.', Colors.green),
    Paint(4, 'Sanılanın aksine, mantis karideslerinin üstün görüş kabiliyetleri bulunmamakta.', Colors.lime),
    Paint(5, 'Facebook üzerinde, içerik akışını kontrol ederek ve yalnızca belli gönderileri göstererek insanları bazı duygulara yönlendirmek ve manipule etmek mümkün.', Colors.indigo),
    Paint(6, 'Ders notlarını elleriyle yazan öğrenciler bilgisayara öğrencilere göre daha iyi öğreniyor.', Colors.yellow),
  

  
    
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
