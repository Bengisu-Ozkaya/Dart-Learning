import 'dart:math';

import '11_Liste_Map_Metodlari.dart';

void main(List<String> args) {
  //try-catch
  try {
    //0'a bölme hatası
    /*int sayi = 100 ~/ 0;
    print(sayi);*/

    //dönüştürülemeyen tür hatası
    int sayi2 = 100 ~/ int.parse("bengi");
    print(sayi2);
  } /*on UnsupportedError {
    print("Bölen 0 olamaz!");
  }*/ /*on UnsupportedError catch (e) {
    print(e.message);
  }*/ on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print("Bir sorun oluştu");
    print(e);
  } finally {
    print("Finally Çalıştı!");
  }

  print(kareKok(144));
  //print(kareKok(-144)); // NaN döndürür, throw'dan dolayı hata mesajında Girilen değer negatif olamaz! yazar

  try {
    print(kareKok(-144));
  } on FormatException catch (e) {
    print(e.message);
  } catch (e) {
    print("Belirlenemeyen Hata!");
  }

  Student? st1;
  try {
    st1 = Student("b", -5);
    print(st1.age); // Yaş 0'dan küçük olamaz! hatası verir throw kaynaklı
  } on AgeException catch (e) {
    print(e.mesaj);
  } catch (e) {
    print(e);
  } finally {
    print(st1?.age); //st1 nesnesi oluşmadığı için null döner
  }
}

double kareKok(int sayi) {
  try {
    if (sayi < 0) {
      throw FormatException("Girilen değer negatif olamaz!");
    } else {
      return sqrt(sayi);
    }
  } catch (e) {
    print("Hata metot içinde yakalandı");
    //throw FormatException("Girilen değer negatif olamaz!");
    rethrow; //üstteki yerine direkt bunu kullanabiliriz.
  }

  /*if (sayi < 0) {
    throw FormatException("Girilen değer negatif olamaz!");
  }
  return sqrt(sayi);*/
}

class Student {
  String name = "";
  int age = 0;
  Student(String name, int age) {
    if (age < 0) {
      throw AgeException(mesaj: "Yaş 0'dan küçük olamaz!");
    } else {
      this.age = age;
    }
    if (name.isEmpty || name.length == 1 || name.length == 2) {
      throw UnsupportedError("Lütfen geçerli bir isim giriniz!");
    } else {
      this.name = name;
    }
  }
}

class AgeException implements Exception {
  String mesaj;
  AgeException({this.mesaj = "Age Exception hatası alındı"});

  @override
  String toString() {
    return "Age Exception Çalışıyor";
  }
}
