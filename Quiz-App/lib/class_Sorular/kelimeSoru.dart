

import '../soru.dart';

class ClassKelimeSorular {
  List<Soru> soruBankasi = [
    Soru( soruMetni: 'Hastane, ev, fabrika gibi yerlerden kullanılmış ve kullanıcının artık işine yaramayan maddelerin tümüne atık adı verilir', soruYaniti: true),
    Soru(soruMetni: 'Birden ortaya çıkan, aşırı ve normalin dışına taşmış korku hali kaygı denir',  soruYaniti: false),
    Soru(soruMetni: 'Tereyağı Genellikle ''viyol'' denen özel karton kaplarda satılan, kendinden ambalajlı bir besindir.', soruYaniti: false),
    Soru(soruMetni: 'Durum, ortam, çevre, atmosfer'' anlamlarında kullanılan bir sözcükğe ambiyans denir.', soruYaniti: true),
    Soru( soruMetni: 'Cevabı ''şehvet olan'' olan ''seksüel şevk'' sorusuna verilen yanıt behlüldür.',soruYaniti: true),
    Soru(soruMetni: 'Ultraviyole'' sözcüğünün Türkçe karşılığı morÖtesi dir.', soruYaniti: true),
  ];
}

class ClassKelimeSorularCevap {
  List<SoruDogruCevabi> soruDogruCevaplari = [
    SoruDogruCevabi( dogruCevap: 'Hastane, ev, fabrika gibi yerlerden kullanılmış ve kullanıcının artık işine yaramayan maddelerin tümüne atık adı verilir '),
    SoruDogruCevabi( dogruCevap:'Birden ortaya çıkan, aşırı ve normalin dışına taşmış korku hali panik denir'),
    SoruDogruCevabi( dogruCevap: 'Yumurta Genellikle ''viyol'' denen özel karton kaplarda satılan, kendinden ambalajlı bir besindir.',),
    SoruDogruCevabi(dogruCevap: 'Durum, ortam, çevre, atmosfer'' anlamlarında kullanılan bir sözcükğe ambiyans denir.'),
    SoruDogruCevabi( dogruCevap: 'Cevabı ''şehvet olan'' olan ''seksüel şevk'' sorusuna verilen yanıt behlüldür.'),
    SoruDogruCevabi(dogruCevap: 'Ultraviyole'' sözcüğünün Türkçe karşılığı morÖtesi dir.'),
  ];
}
