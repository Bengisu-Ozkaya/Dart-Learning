import 'dart:io';

void main(List<String> args) async {
  /*print("1 - Anne çocuğu ekmek almaya yollar...");
  Future<String> sonuc = ekmekAlmayaGit(); //Future.delay kaynaklı bu satırın çalışıp bitmesi beklenmesen alt satır çalışır
  //print(sonuc); -> Instance of 'Future<String>' çıktısı verir
  sonuc
      .then((String value) {
        print(value);
      })
      .catchError((hata) {
        print(hata);
      })
      .whenComplete(() {
        print("Ekmek alma operasyonu tamamlandı!");
      });
  //Fonksiyon sorunsuz çalıştıysa then çalışır bir sorun oluştuysa catchError ile bu yakalanır. whenCompleted ile de operasyon tamamlansın veya tamamlanmasın çalışır.

  print("4 - Anne kahvaltıyı hazırlar...");*/

  //Listelerle Future sınıfı
  print("1 - İnternetten kişi listesini getir.");
  /*var kisiListesi = await kisiListesiniGetir(); // await kullanırken async ibaresini sınıfın başına yazmak lazım
  print(kisiListesi);*/ //Burada önce bu işlemin bitmesi beklenir ve sonra diğer işlemlere geçilir

  kisileriGetir(); //Burada ise bu işlemin yapılması beklenmez, alttaki işlemler yapılır bu işlem bitince getirilir.

  print("3 - Başka işlemler yapılıyor.");
  print("4 - İşlem bitti!");

  //future nesnesi oluşturma
  var future1 = Future<int>.delayed(Duration(seconds: 5));
  //Başarı durumu
  var future2 = Future.value(10);
  var future3 = await Future.value(10);
  //Başarısız
  var future4 = await Future.error("Future Hata ile Bitti.");
  //bir işlemin ne kadar süreceğini bilmediğimizde bu şekilde bir future nesnesi oluştutrulabilir
  var future5 = Future(() {
    int toplam = 0;
    for (var i = 0; i < 100000; i++) {
      toplam += i;
    }
    return toplam;
  });

  int toplam = await future5;
  print(toplam);
}

/*void ekmekAlmayaGit() {
  print("2 - Çocuk ekmek almak için evden çıkar...");
  //sleep(Duration(seconds: 10));
  Future.delayed(Duration(seconds: 3), () => { 
    print("3 - Çocuk ekmek alıp eve geldi...")
  }); 
}*/

Future<String> ekmekAlmayaGit() {
  print("2 - Çocuk ekmek almak için evden çıkar...");
  var myFuture = Future.delayed(Duration(seconds: 3), () {
    return "3 - Çocuk eve geldi...";
  });

  return myFuture;
}

Future<List<String>> kisiListesiniGetir() {
  return Future.delayed(Duration(seconds: 2), () {
    print("2 - Getirilen Kişiler:");
    return ["bengi", "elif", "gülso", "dilay"];
  });
}

void kisileriGetir() async {
  //try catch kullanma amacımız eğer bir sorun olur ve kişiler getirilemezse uygulama çökmesin diye
  try {
    var kisiListesi = await kisiListesiniGetir(); // await kullanırken async ibaresini sınıfın başına yazmak lazım
    print(kisiListesi);
    print("Toplam Getirilen Kişi Sayısı: ${kisiListesi.length}");
  } catch (e) {
    print(e);
  }
}
