import 'dart:io';

void main(List<String> args) {
  // 1- Kullanıcıdan alınan 3 sayının ortalaması
  /*print("1.Sayı: ");
  var sayi1 = double.parse(stdin.readLineSync()!);

  print("2.Sayı: ");
  var sayi2 = double.parse(stdin.readLineSync()!);

  print("3.Sayı: ");
  var sayi3 = double.parse(stdin.readLineSync()!);

  double ortalama = (sayi1 + sayi2 + sayi3) / 3;

  print("Girilen Sayıların Ortalaması: " + ortalama.toString());*/

  // 2- Vize-Final geçti kaldı hesaplaması
  /*print("Vize notunuz: ");
  var vizeNotu = int.parse(stdin.readLineSync()!);

  print("Final Notunuz: ");
  var finalNotu = int.parse(stdin.readLineSync()!);

  double ort = (vizeNotu * 0.4) + (finalNotu * 0.6);

  print("Vize: $vizeNotu \nFinal: $finalNotu \nOrtalama: $ort");

  if ((finalNotu > 50) && (ort >= 50)) {
    print("Dersten Geçtiniz!!!");
  } else{
    print("Dersten Kaldınız!!!");
  }*/

  // 3- Faktöreiyel Hesaplama
  print("Sayı Giriniz: ");
  var sayi = int.parse(stdin.readLineSync()!);

  int faktoriyel = 1;
  for (var i = 1; i <= sayi; i++) {
    faktoriyel = i * faktoriyel;
  }
  print("$sayi! = $faktoriyel");
}
