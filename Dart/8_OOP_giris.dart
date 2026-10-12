//Araba Sınıfı
class Araba {
  int? modelYili;
  String? marka;

  void kornaCal() {
    print("Düt Düt!");
  }
}

class Ogrenci {
  String? ad;
  String? soyad;
  double? gpa;

  //Constructor
  //Boş Constructor
  /*Ogrenci() {
    print("Parametresiz Boş Constructor");
  }*/
  Ogrenci(String ad, String soyad, double gpa) {
    print("Constructor Çalıştı");
  }

  void ogrenciBilgileri() {
    print(
      "Öğrencinin Adı: $ad\nÖğrencinin Soyadı: $soyad\nÖğrencinin Ortalaması: $gpa",
    );
  }
}

class Kedi {
  String? isim;
  String? tur;
  int? yas;

  Kedi(String isim, String tur, int yas) {
    this.isim = isim; //Kedi sınıfındaki isim değişkeni this.isimi diğer değişken ise constructor'da kullanıcıdan aldığımız isim değişkeni
    this.tur = tur;
    this.yas = yas;
  }

  Kedi.yasOlmadan(this.isim, this.tur) {
    //Bu da bir constructor tanımıdır
    this.yas = 1; //Kedi sınıfından olduğu için
  }

  // factory
  factory Kedi.factoryKedi(String? isim, String? tur, int? yas) {
    if (yas == null) {
      return Kedi.yasOlmadan(
        isim,
        tur,
      ); // üretildiği sınıftan nesne return etmeli
    } else {
      // Eğer yaş null değilse, alınan değerlerle normal constructor çalışır
      return Kedi(isim ?? "İsimsiz", tur ?? "Bilinmiyor", yas);
    }
  }

  void sesCikar() {
    print("Miyav");
  }

  void kediBilgi() {
    print("Kedinin Adı ${this.isim}, cinsi ${this.tur} ve yaşı ${this.yas}");
  }
}

void main(List<String> args) {
  //----- ARABA SINIFI -----
  // Araba araba = Araba(); // araba nesnesi üretimi
  // araba.marka = "Clio";
  // araba.modelYili = 2003;

  // print("Arabanın Markası: ${araba.marka}\nYılı: ${araba.modelYili}");
  // araba.kornaCal();

  // var araba2 = Araba(); // araba nesnesi üretimi
  // araba2.marka = "Fiat";
  // araba2.modelYili = 2013;

  // print("Arabanın Markası: ${araba2.marka}\nYılı: ${araba2.modelYili}");
  // araba2.kornaCal();

  //--- ÖĞRENCİ SINIFI ---
  // Ogrenci ogr1 = Ogrenci("b", "ö", 3.4);
  // var ogr2 = Ogrenci("g", "i", 3.2);

  // ogr1.ogrenciBilgileri();
  // ogr2.ogrenciBilgileri();

  //--- KEDİ SINIFI ---
  Kedi k1 = Kedi("Minnoş", "Tekir", 4);
  print("Kedinin adı: ${k1.isim}, cinsi: ${k1.tur} ve yaşı: ${k1.yas}");
  k1.sesCikar();

  var k2 = Kedi.yasOlmadan("Yaman", "Sarman");
  print(k2.yas);

  var k3 = Kedi.factoryKedi("Mırmır", "Tekir", null);
  var k4 = Kedi.factoryKedi("Pamuş", null, null);
  k3.kediBilgi();
  k4.kediBilgi();
}
