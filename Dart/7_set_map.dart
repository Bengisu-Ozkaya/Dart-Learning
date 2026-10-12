void main(List<String> args) {
  //Set
  // Listelerden farklı olarak tekrar eden eleman olmaz, olsa da tekrar etmşyor gibi yazdırır
  Set<int> sayilar = Set();
  sayilar.add(12);
  sayilar.add(9);
  sayilar.add(9);
  sayilar.add(9);
  sayilar.add(24);
  sayilar.add(55);

  print(sayilar.length);
  print(sayilar);

  for (var sayi in sayilar) {
    print("Mevcut Sayı: $sayi");
  }

  var ciftSayilar = <int>{};
  ciftSayilar.add(2);
  ciftSayilar.add(4);
  ciftSayilar.add(6);
  ciftSayilar.add(2);

  print(ciftSayilar);

  var tekSayilar = <int>{};
  tekSayilar.addAll([1, 3, 5, 7, 9]);
  print(tekSayilar);

  sayilar.clear();
  sayilar = <int>{
    ...tekSayilar,
    ...ciftSayilar,
  }; //addAll yerine böyle d birleştirilebilir
  print(sayilar);

  sayilar.clear();
  sayilar = Set.from([1, 2, 2, 3, 3, 4, 5, 5, 6, 7, 8]);
  print(sayilar);

  var deneme = Set.from([
    2,
    5,
    5,
    7,
    8,
  ]); //Set objesini illa Set diye tanımlamama gerek yok
  print(deneme);

  // Map
  Map<String, int> plakalar = {
    "Adana": 01,
    "Adıyaman": 02,
    "Afyonkarahisar": 03,
    "Ağrı": 04,
    "Amasya": 05,
    "Ankara": 06,
  };
  // Adana Key'i bana value olarak 01'i verir

  Map<int, String> plakalar2 = {07: "Antalya", 08: "Artvin", 09: "Aydın"};
  // 07 Keyi bana Antalya'yı verir

  var kullaniciBilgileri = <String, dynamic>{
    "ad": "Bengi",
    "meslek": "Öğrenci",
    "yas": 21,
    "resitMi": true,
  };

  var sozluk = Map<String, String>();
  sozluk['car'] = 'araba';
  sozluk['apple'] = 'elma';
  sozluk['hello'] = 'merhaba';

  print(plakalar['Adana']);
  print(
    plakalar2["Antalya"],
  ); // Key değeri Antalya olan bir eleman olmadığı için null döner
  print(plakalar2[07]);

  for (var p in plakalar.keys) {
    print("Şehir: $p");
  }

  for (var p in plakalar2.entries) {
    // Key-Value olarak yazdırıyor Mapi
    print("${p.key} -> ${p.value}");
  }

  var firstNameMap = {"firstName": "Bengi"};
  var lastNameMap = {"lastName": "Özkaya"};
  var fullNameMap = {...firstNameMap, ...lastNameMap}; // Map birleştirme
  print(fullNameMap);

  // Bazı Komutlar
  print(plakalar.containsKey("Amasya")); // Map'de bu key değeri var mı?
  print(plakalar.containsValue("07")); // Map'de bu value değeri var mı?

  plakalar.remove("Ankara");
  print(plakalar);

  plakalar.clear();
  print(plakalar);
}
