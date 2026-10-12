import 'dart:math';

//Encapsulation - private, public, getter, setter
class People{
  final String _name;

  const People(this._name);

  bool deathPeople() {
    if (_isPeopleLive()) {
      print("Yaşıyordu ve öldürüldü!");
      return true;
    } else {
      print("Yaşamadığı için öldürülemedi!");
      return false;
    }
  }

  bool _isPeopleLive() {
    // buradaki "_" private demek
    if (Random().nextBool()) {
      print("İnsan bulundu!");
      return true;
    } else {
      print("İnsan Bulunamadı!");
      return false;
    }
  }

  String get getUserName {
    return this._name;
  }
}
