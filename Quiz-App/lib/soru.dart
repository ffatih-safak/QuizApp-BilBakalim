 
  import 'package:flutter/material.dart';
 
 class Soru{ 
   
  var soruMetni;
  bool soruYaniti;
  Soru( {   
    @required this.soruMetni,
    @required this.soruYaniti,
  }
  );
}

class SoruDogruCevabi{ 
  var dogruCevap;
    SoruDogruCevabi( {   
    @required this.dogruCevap,
   
   }
 );
}
class Kategori{ 
  var kategori;
  var ktgSoru;
    Kategori( {   
    @required this.kategori,
    @required this.ktgSoru,
   }
 );
}