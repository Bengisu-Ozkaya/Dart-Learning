//Abstraction
abstract class Animal {
  String name = "";

  void sesCikar() {
    //Bu fonksiyon boş da olabilirdi void sesCikar(); şeklinde
    print("Hayvan ses çıkarıyor!");
  }
}

//Interface
abstract interface class DortAyakli {
  void kos();
}

abstract interface class Kanatlilar {
  void uc();
}

class Cat extends Animal implements DortAyakli {
  Cat(String name) {
    if (name.isEmpty) {
      this.name = "İsimsiz Kedi";
    } else {
      this.name = name;
    }
  }

  @override
  void sesCikar() {
    print("${this.name}: Miyav!");
  }

  @override
  void kos() {
    print("${this.name} araba ezmesin diye koşuyor!");
  }
}

class Dog extends Animal implements DortAyakli {
  Dog(String name) {
    if (name.isEmpty) {
      this.name = "İsimsiz Köpek";
    } else {
      this.name = name;
    }
  }
  @override
  void sesCikar() {
    print("${this.name}: Hav Hav!");
  }

  @override
  void kos() {
    print("${this.name} frizbiyi yakalamak için koşuyor!");
  }
}

class Bird extends Animal implements Kanatlilar {
  Bird(String name) {
    if (name.isEmpty) {
      this.name = "İsimsiz Kuş";
    } else {
      this.name = name;
    }
  }

  @override
  void uc() {
    print("${this.name} uçuyor!");
  }
}
