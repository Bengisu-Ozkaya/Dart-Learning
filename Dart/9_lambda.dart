void main(List<String> args) {
  //Lambda Gösterimi
  // Aşağıdaki toplama methodu ile tamamen aynı.
  var toplama = (int sayi1, int sayi2) {
    int toplam = sayi1 + sayi2;
    print("Sayıların Toplamı: ${toplam}");
  };

  toplama(2, 4);

  // Lambda gösterimi 2
  var kareAlma = (int sayi) => sayi * sayi;
  print("Sayının Karesi: ${kareAlma(4)}");

  // Lambda gösterimi 3
  var kareAl = (int sayi) {
    return sayi * sayi;
  };
  print("6^2 = ${kareAl(6)}");
}

/*void toplama(int sayi1, int sayi2) {
  int toplam = sayi1 + sayi2;
  print("Sayıların Toplamı: ${toplam}");
}*/
