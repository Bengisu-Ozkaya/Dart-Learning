void main(List<String> args) {
  // 1 - Üçgenin çevresi
  int kenar1 = 3;
  int kenar2 = 4;
  int kenar3 = 5;

  int cevre = kenar1 + kenar2 + kenar3;

  print(
    "Birinci Kenarı $kenar1, ikinci kenarı $kenar2 ve üçüncü kenarı $kenar3 olan üçgenin çevresi $cevre'dir",
  );

  // 2 - Kişisel Bilgiler
  String name = "Bengi";
  int birthYear = 2005;
  int currentYear = 2026;

  int age = currentYear - birthYear;

  print("Adım $name, $birthYear yılında doğdum ve yaşım $age");
}
