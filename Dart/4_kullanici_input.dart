import 'dart:io';

void main(List<String> args) {
  print("Adınızı griniz: ");
  var name = stdin.readLineSync();
  print("Yaşınızı griniz: ");
  var age = int.parse(stdin.readLineSync()!);

  print("Hoşgeldin, $name!");
  print("Yaşınız: " + age.toString());
}
