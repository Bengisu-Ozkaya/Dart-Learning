import 'dart:io';

void main(List<String> args) async {
  //DOSYAYA VERİ YAZMA
  // Bu yöntemle data1.txt dosyası sürekli başan yazılır ve dosyada sadece "4.Sınıf" yazar
  /*File dosya1 = File('data1.txt');
  await dosya1.writeAsString("Bengisu Özkaya\n");
  await dosya1.writeAsString("Bilgisayar Mühendisliği\n");
  await dosya1.writeAsString("4.Sınıf\n");*/

  //Buradaki gibi mode: FileMode.append ile yapılırsa yazılar alt alta gelir
  /*File dosya2 = File('data2.txt');
  await dosya2.writeAsString("Bengisu Özkaya\n", mode: FileMode.append);
  await dosya2.writeAsString("Bilgisayar Mühendisliği\n",mode: FileMode.append,);
  await dosya2.writeAsString("4. Sınıf\n", mode: FileMode.append);*/

  //DOSYADAN VERİ OKUMA
  /*var dosyaIcerigi = await dosya2.readAsLines();
  dosyaIcerigi.forEach((satir) => print(satir));*/

  var dosya3 = File("data3.txt");
  await dosyaYaz(dosya3); //dosyaya yazma işlemi bitmeden okuma işlemi gerçekleşmesin diye await kullanıyoruz
  dosyaOku(dosya3);
}

dosyaYaz(File dosya) async {
  await dosya.writeAsString("Bengisu Özkaya\n", mode: FileMode.append);
  await dosya.writeAsString("Bilgisayar Mühendisliği\n", mode: FileMode.append);
  await dosya.writeAsString("4. Sınıf\n", mode: FileMode.append);
}

dosyaOku(File dosya) async {
  var dosyaIcerigi = await dosya.readAsLines();
  dosyaIcerigi.forEach((satir) {
    print(satir);
  });
}
