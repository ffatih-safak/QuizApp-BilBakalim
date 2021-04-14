import 'package:login_page_day_23/class_Sorular/BilimSorulari.dart';
import 'package:login_page_day_23/class_Sorular/genelsorular.dart';
import 'package:login_page_day_23/class_Sorular/kelimeSoru.dart';
import 'package:login_page_day_23/class_Sorular/muzikSor.dart';
import 'package:login_page_day_23/class_Sorular/sporSoru.dart';
import 'package:login_page_day_23/class_Sorular/tarihSorulari.dart';

import '../soru.dart';
class Kategoriler
{
  String category;
  List <Kategori> kategori = [ 
    Kategori(kategori: "Genel", ktgSoru: ClassGenelSorular),
    Kategori(kategori: "Tarih",ktgSoru: ClassTarihSorular),
    Kategori(kategori: "Spor",ktgSoru: ClassSporSorular),
    Kategori(kategori: "Bilim",ktgSoru: ClassBilimSorular),
    Kategori(kategori: "Kelime",ktgSoru: ClassKelimeSorular),
    Kategori(kategori: "Müzik",ktgSoru: ClassMuzikSorular),
  ];
}


 /* List<SoruHavuzu> tümSorular=[
    new SoruHavuzu(){category="Bilim",soruBankasi=ClassBilimSorular.sorubankasi},
    new SoruHavuzu(){category="Müzik",soruBankasi=ClassBilimSorular.sorubankasi},
    new SoruHavuzu(){category="Bilim",soruBankasi=ClassBilimSorular.sorubankasi},
    new SoruHavuzu(){category="Bilim",soruBankasi=ClassBilimSorular.sorubankasi}
  ];

//List<String> categoriler = tümSorular.map((value) => value.category).toList();
//List<Soru> sorular=tümSorular.where((f) => f.category==seciliKategori).toList(); 
*/
