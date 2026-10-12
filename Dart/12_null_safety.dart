int? deneme = 3;

void main(List<String> args) {
  int a; // null değeri otomatik atandı
  int? b; // b değeri bazen null değer alabilir

  b = null;
  b = 2;
  print(b + 5); // b = 2 satırını bloke edersek burası hata verir

  List<String>? harfler; //harfler listesinin null olabileceği anlamına gelir
  List<String?> harfler2; //harflerin içindeki elemanlar null olabilir
  List<String?>? harfler3; //harfler listesi null olabilir veya bu listenin elemanları null olabilir

  int sayi = deneme!; //! işareti: deneme null olabilir ancak null olmayacağını biliyorum

  List<int?> sayilar = [1, 2, null, 4];
  int s = sayilar.first!; //listede null değerler de olabileceği için ! koyarak ilk elemanın null olamayacağını belirttik

  int c = canNullReturnFunction()!; //bu fonksiyon null döndürebileceği için ! ile sağlama aldık

  //required
  print(toplama(s1: 2, s2: 7, s3: 11));
  print(toplama(s1: 44, s2: 7, s3: 11));

  //type promotion - null olabilecek bir nesneye null olmayacak gibi işlem yapması
  String? mesaj;
  //print(mesaj.length); mesaj nll olabileceği için hata verir
  if (DateTime.now().hour < 12) {
    mesaj = "Günaydın!";
  } else {
    mesaj = "İyi Akşamlar!";
  }
  print(
    mesaj.length,
  ); //if veya else'te mesaj değişkenine bir değer atandığı için hata geçti.

  print(returnLength(mesaj));

  Student st1 = Student();
  // print(st1.name); //st1 de name değişkeni null olduğu için hata verir
  st1.setName("bengi");
  print(st1.name);

  // ?? operatörü -> bir değerin null olup olmadığını söler
  int? x;
  print(x ?? 0); //x null ise 0 değerini değilse x değerini yazar

  // ?. Operatörü
  List<String?> isimler = [null ,null ,"dilay", "elif"];
  print(isimler.first?.length ?? 2); //?. ->isimler listesinin ilk elemanı null ise null yaz değilse o elemanının uzunluğunu yaz
                                     //?? -> uzunluğu null geldiyse 2 yaz gelmediyse uzunluğu yaz
}

class Student {
  late String name;

  void setName(String name) {
    this.name = name;
  }
}

int? canNullReturnFunction() {
  return 1;
}

int toplama({required int s1, required int s2, required int s3}) {
  return s1 + s2 + s3;
}

int returnLength(String? mesaj) {
  if (mesaj == null) {
    //Burası olmasa main'de çağırdığım kısım hata verirdi mesaj değişkeni null olursa diye
    return 0;
  }
  return mesaj.length;
}
