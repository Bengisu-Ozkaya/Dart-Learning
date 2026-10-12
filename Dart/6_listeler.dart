void main(List<String> args) {
  // int listesi
  List<int> sayilar = List.filled(5, 0);
  print(sayilar);

  sayilar[0] = 12;
  sayilar[1] = 2;
  sayilar[2] = 7;
  sayilar[3] = 11;
  // sayilar[3] = "b"; hata verir çünkü bu bir integer listesi
  sayilar[4] = 29;
  // sayilar[7] = 11; Listenin indexşnşn dışında hata verir
  print(sayilar);

  for (int i = 0; i < sayilar.length; i++) {
    print("Mevcut Sayı: " + sayilar[i].toString());
  }

  //String liste
  List<String> sehirler = ["Ankara", "Nevşehir", "Antalya", "Malatya"];

  for (String sehir in sehirler) {
    print("Mevcut Şehir: " + sehir);
  }

  //karışık liste
  List karisik = [1, 2, 3, "a", 'b', true];
  print(karisik);

  // dinamik liste
  List<int> sayiListesi = List.filled(4, 0, growable: true);
  List<int> sayiListesi2 = List.empty(growable: true);
  List<int> sayiListesi3 = [];

  sayiListesi.add(3);
  sayiListesi.add(4);
  sayiListesi2.add(3);
  sayiListesi3.add(3);

  print(sayiListesi);
  print(sayiListesi2);
  print(sayiListesi3);

  var metinler = List<String>.empty(growable: true);
  metinler.add("Bengi");
  metinler.add("Muhteşem");
  metinler.add("Biri");
  /*metinler.add(true); //String türünde olmadıkları için hata verirler
  metinler.add(12);*/

  print(metinler);

  // Listelerde Bazı Komutlar
  var numbers = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(numbers);
  if (numbers.isNotEmpty) {
    // numbers listesi boş değilse
    print(numbers.first);
    print(numbers.last);

    numbers.add(10);

    var newNumbers = <int>[11, 12, 13];
    numbers.addAll(newNumbers);
    numbers.addAll([14, 15]); // üsttekinin kısa versiyonu
    print(numbers);

    numbers.remove(4);
    numbers.removeLast();
    numbers.removeAt(0); // verilen indeksteki elemanı sil

    print(numbers);

    print(numbers.elementAt(5)); // verilen indexteki elemanı döndür
    print(numbers.indexOf(7)); // verilen sayı hangi indexteyse onu döner

    print(numbers);
    numbers.shuffle(); // listeyi karıştırır;
    print(numbers);

    print(numbers.contains(12)); // verilen sayının listede olup olmadığı
    print(numbers.contains(22));

    numbers.clear();
    print(numbers);
  }
}
