class Ogrenci {
  int id = -1;
  String ad = "";
  bool ogrenciMi = false;

  Ogrenci(int id, String ad, bool ogrenciMi) {
    if (id <= 0) {
      print("Geçersiz ID");
    } else {
      this.id = id;
    }

    if (ad.isEmpty) {
      print("Geçersiz İsim");
    } else {
      this.ad = ad;
    }

    this.ogrenciMi = ogrenciMi;
  }

  // print(ogrenciler) dendiğinde Insatance of 'Ogrenci' yazmak yerine bu şekilde yazması
  @override
  String toString() {
    return "ID: $id Ad: $ad Aktif Mi: $ogrenciMi\n";
  }
}

void main(List<String> args) {
  Ogrenci o1 = Ogrenci(1, "b", true);
  var o2 = Ogrenci(2, "g", false);
  var o3 = Ogrenci(3, "e", true);
  var o4 = Ogrenci(4, "d", false);

  print("----------  METODLARI ----------");
  List<Ogrenci> ogrenciler = [];
  ogrenciler.add(o1);
  ogrenciler.add(o2);

  print(ogrenciler);

  List<Ogrenci> ogrenciler2 = [];
  //add
  ogrenciler2.add(o3);
  ogrenciler2.add(o4);

  //addAll
  ogrenciler.addAll(ogrenciler2);
  print(ogrenciler);
  ogrenciler.addAll([Ogrenci(5, "ö", true), Ogrenci(6, "u", true)]);
  print(ogrenciler);

  //any
  var sonuc = ogrenciler.any((Ogrenci ogr) => ogr.id > 8); //Query tarzı
  print(sonuc);

  //asMap - listeyi map'e dönüştürme
  var turnMap = ogrenciler.asMap();
  print(turnMap);

  //contains - verilen değerin listede olup olmadığına bakar
  var sonucContain = ogrenciler.contains(
    Ogrenci(1, "b", true),
  ); //içindeki değer yeni bir  nesne olduğu için listede yok diyor
  print(sonucContain);

  //elementAt - verilen indexteki değeri döner
  var sonucElement = ogrenciler.elementAt(3);
  print(sonucElement);

  //every - verilen ifadedeki karşılaştırma bütün liste için geçerli mi değil mi
  bool sonucEvery = ogrenciler.every((ogr) => ogr.ad.length > 0);
  print(sonucEvery);

  //map - listemizdeki her elemanı alır ve farklı bir yapıya dönüştürür
  var ogrenciIterable = ogrenciler.map((ogr) => ogr.ad);
  print(ogrenciIterable); //ne bir map ne de bir list

  var iterableList = ogrenciIterable.toList(); // Listeye dönüştürme
  print(iterableList);

  //sort - verilen listeyi sıralama
  //ogrenciler.sort(); //Ogrenci veri tipini nasıl sıralayacağını bilmediği için hata verir

  // Öğrencileri ID'Lerine göre küçükten büyüğe sıralama
  ogrenciler.sort((Ogrenci ogr1, Ogrenci ogr2) {
    if (ogr1.id < ogr2.id) {
      return 1;
    } else if (ogr1.id > ogr2.id) {
      return -1;
    } else {
      return 0;
    }
  });

  print(ogrenciler);

  // Öğrencileri ID'Lerine göre büyükten küçüğe sıralama
  ogrenciler.sort((Ogrenci ogr1, Ogrenci ogr2) {
    if (ogr1.id < ogr2.id) {
      return 1;
    } else if (ogr1.id > ogr2.id) {
      return -1;
    } else {
      return 0;
    }
  });

  print(ogrenciler);

  // Öğrencileri Adlarına göre alfabetik sıralama
  ogrenciler.sort((Ogrenci ogr1, Ogrenci ogr2) => ogr1.ad.compareTo(ogr2.ad));
  print(ogrenciler);

  // Öğrencileri Adlarına göre alfabenin tersi şekilde sıralama
  ogrenciler.sort((Ogrenci ogr1, Ogrenci ogr2) => ogr2.ad.compareTo(ogr1.ad));
  print(ogrenciler);

  //clear
  ogrenciler.clear();
  print(ogrenciler);

  print("---------- MAP METODLARI ----------");
  var sayilar = [1, 2, 3, 4, 5];
  var sehirler = ["adana", "adıyaman", "afyon", "ağrı", "amasya"];

  //fromIterable - fromIterables --> Listeleri Map'leştiriyor.
  var ornekMap = Map<int, String>.fromIterable(
    sayilar,
    key: (element) => element,
    value: (element) => (element * element).toString(),
  );
  print(ornekMap);

  var plakaMap = Map.fromIterables(sayilar, sehirler);
  print(plakaMap);

  //putIfAbsent
  ornekMap.putIfAbsent(6, () => "60");
  ornekMap.putIfAbsent(2, () => "60"); //var olan index keydeki value değişmez
  print(ornekMap);
  //var olan indexin value'sunu değiştirmek için:
  ornekMap.update(2, (value) => "100");
  print(ornekMap);

  //updateAll - Bütün değerleri günceller
  ornekMap.updateAll((key, value) => "0");
  print(ornekMap);
}
