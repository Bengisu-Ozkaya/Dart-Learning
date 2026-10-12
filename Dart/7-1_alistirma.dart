import 'dart:io';
import 'dart:math';

void main(List<String> args) {
  // //1- 100 elemanlı ve içerisinde 0-100 arası rastgele sayılar olan liste oluşturun
  // var random = List<int>.filled(100,0);
  // randomListeOlusturma(random);

  // //2- Keyleri string, value dynamic olan bir map oluştur. İşlemci hızı, çekirdek sayısı, ram miktarı ve ssd olup olmadığı bilgileri
  // var pcAtt = <String, dynamic>{
  //   "islemciHizi": 2.4,
  //   "cekirdekSayisi": 8,
  //   "ramMiktari": 16,
  //   "ssdVarMi": true,
  // };

  // print(pcAtt);

  // //3- Kullanıcıdan int pozitif değer al, kullanıcı -1 girdiğinde girilen sayıların ortalaması alınsın
  // var userList = List<int>.empty(growable: true);
  // var input = 0;
  // while (input != -1) {
  //   print("Sayı Giriniz:");
  //   input = int.parse(stdin.readLineSync()!);

  //   if (input < 0 && input != -1) {
  //     print("Lütfen Pozitif Sayı Giriniz!");
  //   } else if (input == -1) {
  //     print("Ortalama Hesaplanıyor...");
  //     ortalamaHesapla(userList);
  //     break;
  //   } else {
  //     userList.add(input);
  //   }
  // }

  // //4- Ad,Soyad ve Renkleri (liste) içeren bir map oluşturun. Aynı yapıda bir arkadaş daha ekle ve bu iki mapi birleştir
  // var myInfo = {
  //   "ad": "Bengi",
  //   "soyad": "Özkaya",
  //   "renkler": ["Kırmızı, Yeşil, Mavi"],
  // };

  // var friendInfo = {
  //   "ad": "Diloş",
  //   "soyad": "Göbüş",
  //   "renkler": ["Bordo, Mor, Mavi"],
  // };

  // var list = [];
  // list.add(myInfo);
  // list.add(friendInfo);
  // print(list);

  //5- 100 ile 0 arasında rastgele değer alan 100 elemanlı bir liste oluşturun. Bir map yapısıyla bu listede tekrar eden sayıyı ve sayıların kaç kere tekrar ettiğini saklayın. Tekrar eden sayıları ekrana yazdırın.
  var randomList = List<int>.filled(100, 1);
  randomListeOlusturma(randomList);

  Map<int, int> tekrarMap = {};

  tekrarEdenElemanlar(randomList, tekrarMap);
}

void randomListeOlusturma(List<int> list) {
  for (var i = 0; i < list.length; i++) {
    int random = Random().nextInt(101);
    list[i] = random;
  }
  print("Oluştulan liste:\n$list");
}

void ortalamaHesapla(List<int> list) {
  int toplam = 0;
  double ortalama = 0;
  for (int s in list) {
    toplam += s;
  }
  ortalama = toplam / (list.length);
  print("Girdiğiniz sayıların ortalaması: $ortalama");
}

void tekrarEdenElemanlar(List randomList, Map tekrarMap){
  for (var sayi in randomList) {
    if (tekrarMap.containsKey(sayi)) {
      var tekrarSayisi = tekrarMap[sayi];
      tekrarSayisi = tekrarSayisi! + 1;
      tekrarMap[sayi] = tekrarSayisi;
    } else {
      tekrarMap[sayi] = 1;
    }
  }
  ;

  print("Tekrar Eden Elemanlar:\n$tekrarMap");
}
