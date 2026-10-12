void main(List<String> args) {
  int sayi1 = 22;
  int sayi2 = 14;

  if (sayi1 > sayi2) {
    print("sayi1, sayi2'den büyüktür.");
  } else if (sayi1 == sayi2) {
    print("sayi1, sayi2'ye eşittir.");
  } else {
    print("sayi1, sayi2'den küçüktür.");
  }

  int kucuk = 0;

  // if (sayi1 > sayi2) {
  //   kucuk = sayi1;
  //   print("Küçük: $sayi1");
  // } else {
  //   kucuk = sayi2;
  //   print("Küçük: $sayi2");
  // }

  sayi1 < sayi2 ? kucuk = sayi1 : kucuk = sayi2;
  print("Küçük Sayı: " + kucuk.toString());

  //Her iki kullanımda aynıdır

  String name1 = "Bengi", name2 = "bengi";
  if (name1 == name2) {
    print("İsimler aynı");
  } else {
    print("İsimler farklı");
  }

  //Switch-Case
  int gun = 2;
  switch (gun) {
    case 1:
      print("Pazartesi");
      break;
    case 2:
      print("Salı");
      break;
    case 3:
      print("Çarşamba");
      break;
    case 4:
      print("Perşembe");
      break;
    case 5:
      print("Cuma");
      break;
    case 6:
      print("Cumartesi");
      break;
    case 7:
      print("Pazar");
      break;
    default:
      print("Gün tanımlı değil");
      break;
  }
}
