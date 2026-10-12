// Inheritance - Kalıtım
class User {
  String mail = "";
  String password = "";

  void login() {
    print("Giriş Yapıldı");
  }
}

class NormalUser extends User {
  void invite() {
    print("Davet Gönderildi");
  }

  // Override - Üst sınıftaki bir metodu yeniden yazma
  @override
  void login() {
    super.login();
    print("Normal Kullanıcı Giriş Yaptı");
  }
}

class AdminUser extends User {
  void totalUser() {
    print("Total Kullanıcı Sayısı: ...");
  }

   @override
  void login() {
    super.login();
    print("Admin Kullanıcı Giriş Yaptı");
  }
}
