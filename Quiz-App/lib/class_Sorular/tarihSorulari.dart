

import '../soru.dart';

class ClassTarihSorular {
 List <Soru> soruBankasi = [ 
     Soru(  soruMetni: ' Tarihte Türk adıyla kurulan ilk Türk devleti Göktürk dür.',soruYaniti: true),
     Soru( soruMetni: 'Sultan Alparslan Osmanlılar devletinin yöneticisiydi',soruYaniti: false),
     Soru( soruMetni: ' İslamiyeti kabul eden ilk Türk boyu Karluklar dır',soruYaniti: true ),
     Soru( soruMetni: 'Onluk sistem adı verilen askeri teşkilatı ilk defa kuran Türk komutan Mete Han dır',soruYaniti: true),
     Soru( soruMetni: 'İslamiyeti kabul eden ilk Türk boyu Karluklar dır',soruYaniti: true),
     Soru( soruMetni: 'Osmanlı padişahları arasında Sultan lakabını ilk II. Murat kullanmıştır?',soruYaniti: false),
    ];
}

class ClassTarihSorularCevap {
  List <SoruDogruCevabi> soruDogruCevaplari = [ 
     SoruDogruCevabi( dogruCevap: 'Tarihte Türk adıyla kurulan ilk Türk devleti Göktürk dür '),
     SoruDogruCevabi( dogruCevap: 'Sultan Alparslan Selçuklular devletinin yöneticisiydi. '),
     SoruDogruCevabi( dogruCevap: 'İslamiyeti kabul eden ilk Türk boyu Karluklar dır', ),
     SoruDogruCevabi( dogruCevap: 'Onluk sistem adı verilen askeri teşkilatı ilk defa kuran Türk komutan Mete Han dır'),
     SoruDogruCevabi( dogruCevap: 'İslamiyeti kabul eden ilk Türk boyu Karluklar dır'),
     SoruDogruCevabi( dogruCevap: 'Osmanlı padişahları arasında Sultan lakabını ilk I. Murat kullanmıştır'),

    ];
}
