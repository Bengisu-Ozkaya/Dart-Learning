import 'dart:io';

import 'package:mysql1/mysql1.dart';

import 'package:logger/logger.dart';

//enum yapısı
enum Renkler { MAVI, YESIL, KIRMIZI, SARI }

var logger = Logger(
  printer: PrettyPrinter(printTime: true),
  level: Level.error,
  output: FileOutput(file: File('Loglar.txt')),
);

Future<void> main(List<String> arguments) async {
  //enum -> read-only liste
  var favRenk = Renkler.KIRMIZI;
  print(favRenk);

  final conn = await MySqlConnection.connect(
    ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      db: 'dart_dersleri',
      password: '123456',
    ),
  );

  //print("Kapandı"); // Bu çıktı hatasız gelirse veritabanına sorunsuz bağlanmışız demektir

  //Veri Ekleme
  //tabloyaVeriEkle(conn, 112233, "Elif");
  tabloyaVeriEkle(conn, 142536, "Eren");

  //Veri Okuma
  tumTabloyuOku(conn);
}

void tumTabloyuOku(MySqlConnection conn) async {
  var results = await conn.query('select * from kullanici');
  for (var row in results) {
    print('ID: ${row[0]}, TC: ${row[1]} İsim: ${row[2]}');
  }
}

void tabloyaVeriEkle(MySqlConnection conn, int tc, String ad) async {
  var result = await conn.query(
    'insert into kullanici (tc, ad) values (?, ?)',
    [tc, ad],
  );
  print('Inserted row id=${result.insertId}');
  logger.d("d: Veri Eklendi"); //Debug
  logger.e("e: Veri Eklendi"); //Hata
  logger.f("f: Veri Eklendi"); //Fatal Error
  logger.i("i: Veri Eklendi"); //information
  logger.t("t: Veri Eklendi");
  logger.w("w: Veri Eklendi"); //Warning
}

