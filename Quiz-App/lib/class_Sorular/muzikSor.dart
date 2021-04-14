

import '../soru.dart';

class ClassMuzikSorular {
  List <Soru> soruBankasi = [ 
     Soru( 
     soruMetni: 'Çamurluk ünlü gitar markasının Stratocaster adında bir modeli var',soruYaniti: true),
     Soru( 
     soruMetni: 'Dört Mevsim adlı keman konçertosu Antonio Vivaldi eseridir',soruYaniti: true),
     Soru( 
     soruMetni: 'Müzik notalarının ses doğru sıralanışı   DO-RE-Mİ-FA-SOL-LA-Sİ-RE  ',soruYaniti: false ),
     Soru( 
     soruMetni: 'Sabahın güneş doğmadan önceki zamanı Şafak tır.',soruYaniti: false),
     Soru( 
     soruMetni: ' ''İlk ve acil yardım'' , ''acil tıp teknisyeni'' anlamlarında kullanılan yabancı kökenli bir terim parametrik ',soruYaniti: true),
     Soru( 
     soruMetni: 'Avrupa Şampiyonu İlk Türk Boksör Celal Kamacıdır',soruYaniti: true),

    ];
}

class ClassMuzikSorularCevap {
  List <SoruDogruCevabi> soruDogruCevaplari = [ 
     SoruDogruCevabi( 
     dogruCevap: 'Çamurluk ünlü gitar markasının Stratocaster adında bir modeli var'),
     SoruDogruCevabi( 
     dogruCevap: 'Dört Mevsim adlı keman konçertosu Antonio Vivaldi eseridir '),
     SoruDogruCevabi( 
     dogruCevap: 'Müzik notalarının ses doğru sıralanışı   DO-RE-Mİ-FA-SOL-LA-Sİ-DO ', ),
     SoruDogruCevabi( 
     dogruCevap: 'Sabahın güneş doğmadan önceki zamanı Seher tır.'),
     SoruDogruCevabi( 
     dogruCevap: 'İlk ve acil yardım'' , ''acil tıp teknisyeni anlamlarında kullanılan yabancı kökenli bir terim parametrik'),
     SoruDogruCevabi( 
     dogruCevap: 'Avrupa Şampiyonu İlk Türk Boksör Celal Kamacıdır'),

    ];

}
