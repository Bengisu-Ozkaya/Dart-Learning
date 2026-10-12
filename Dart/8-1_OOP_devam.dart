import '8-1-1_Animal.dart';
import '8-1-1_Matematik.dart';
import '8-1-1_People.dart';
import '8-1-1_User.dart';

void main(List<String> args) {
  //Encapsulation
  People p1 = People("Bengisu");
  p1.deathPeople();
  /* EĞER People SINIFI DA BU DOSYANIN İÇİNDE OLSAYDI isUserLive METODUNA ERİŞİM SAĞLANABİLİRDİ */

  print(p1.getUserName);

  // Inheritance
  User u1 = User();
  u1.login();

  NormalUser u2 = NormalUser();
  u2.login();
  u2.invite();

  AdminUser u3 = AdminUser();
  u3.login();
  u3.totalUser();

  // Polymorphism
  User user1 = NormalUser(); //casting
  User user2 = AdminUser(); //casting

  List<User> allUsers = [];
  allUsers.add(user1);
  allUsers.add(user2);

  for (var i = 0; i < allUsers.length; i++) {
    enterLogin(allUsers[i]);
  }

  // Abstraction - Soyutlama
  // Animal a1 = Animal(); abstract olduğu için nesne üretemem bu sınıftan
  Cat minnos = Cat("Minnoş");
  minnos.sesCikar();

  Dog karabas = Dog("Karabaş");
  karabas.sesCikar();

  Bird cicikus = Bird("Cicikuş");
  cicikus.sesCikar();

  //Interface - Arayüz
  Cat kitir = Cat("Kıtır");
  Dog citir = Dog("Çıtır");
  Bird pitir = Bird("Pıtır");

  kitir.kos();
  citir.kos();
  pitir.uc();

  //Static Kullanımı
  print(Matematik.PI);
  Matematik.staticFunction();

  Matematik m1 = Matematik(2, 4);
  m1.topla();
  m1.cikar();
  m1.carp();
  m1.bol();

  Matematik m2 = Matematik(2, 0);
  m2.bol();

  print("Yapılan İşlem Sayısı: ${Matematik.yapilanIslemSayisi}");

  //const - final - immutable
  final num = 11;
  // num = 34; -> final tanımlandığı için bu şekilde değiştirilemez değeri
  print(num);

  const num2 = 33;
  // num2 = 98; -> const tanımından dolayı değiştirilemez hata verir
  print(num2);

  final date = DateTime.now();
  //const date2 = DateTime.now(); -> Ekranda çıktı görene kadar bu değer belli olmadığı için (Derleme anında belirleneceği için) hata verir
  print(date);

  final People peop1 = const People("bengisu");
  final People peop2 = const People("bengisu");

  if (peop1 == peop2) {
    print("Eşittir");
  } else {
    print("Eşit Değiller");
  }
}

void enterLogin(User user) {
  user.login();
  if (user is NormalUser) {
    user.invite();
  }
  if (user is AdminUser) {
    user.totalUser();
  }
}
