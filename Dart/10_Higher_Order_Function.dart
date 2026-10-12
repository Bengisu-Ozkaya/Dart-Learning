void main(List<String> args) {
  List<int> sayilar = <int>[1, 2, 3, 4, 5];
  //High Order Function --> Fonksiyonun parametre olarak bir fonksiyon alması
  sayilar.forEach((int element) {
    //forEach'ın içindeki fonksiyon -> Higher Order Function
    print(element);
  });

  sayilar.forEach(callBack);

  //Kendi forEach tasarımımız
  myForEach(sayilar, callBack);
}

void myForEach(List<int> list, Function callBack) {
  for (var i = 0; i < list.length; i++) {
    callBack(list[i]);
  }
}

void callBack(int element) {
  print("Değer: $element");
}
