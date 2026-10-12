class Matematik {
  int sayi1 = 1;
  int sayi2 = 1;

  //Static - Global değişken gibi düşünlebilir
  static int yapilanIslemSayisi = 0;

  static double PI = 3.0;

  static void staticFunction() {
    print("Static Metod Çağırıldı");
  }

  Matematik(int sayi1, int sayi2) {
    this.sayi1 = sayi1;
    this.sayi2 = sayi2;
  }

  void topla() {
    yapilanIslemSayisi++;

    int toplam = sayi1 + sayi2;
    print("Sayıların Toplamı: $toplam");
  }

  void cikar() {
    yapilanIslemSayisi++;

    int fark = sayi1 - sayi2;
    print("Sayıların Farkı: $fark");
  }

  void carp() {
    yapilanIslemSayisi++;

    int carpma = sayi1 * sayi2;
    print("Sayıların Çarpımı: $carpma");
  }

  void bol() {
    if (sayi2 == 0) {
      print("Sıfırdan farklı sayı giriniz.");
    } else {
      yapilanIslemSayisi++;

      double bolme = sayi1 / sayi2;
      print("Sayıların Bölümü: $bolme");
    }
  }
}
