void main(List<String> args) {
  // Sayı
  int age = 21;
  print(age);

  double weight = 74.4;
  print(weight);

  //Boolean
  bool flag = true;
  print(flag);
  print(!flag);

  //Metin
  String name = "Bengi";
  print(name);

  String surname = "Özkaya";
  print(name + " " + surname);

  print("Ad: " + name + " Soyad: " + surname + " Yaş: " + age.toString());
  print("Ad: $name Soyad: $surname Yaş: $age");
  print("Ad: " + name + "\nSoyad: " + surname + "\nYaş: " + age.toString());

  String fullName = name + " " + surname;
  print(fullName);
  print(fullName.length);
  print(fullName.toUpperCase());
  print(fullName.toLowerCase());
}
