import '14-1_GenericStack.dart';

void main(List<String> args) {
  GenericStack stack = GenericStack();
  stack.push(2);
  stack.push(32);
  stack.push("aaa");
  stack.push(4);

  print(stack.pop());

  IntegerGenericStack integerStack = IntegerGenericStack();
  integerStack.push(3);
  integerStack.push(7);
  integerStack.push(12);
  //integerStack.push("b"); //hata verir çünkü integer ancak bizim listemiz int verilerden oluşyor
  print(integerStack.pop());

  GenericStack<String> generic =
      GenericStack(); //sadece string verilerini tutan bir stack'imiz var
  generic.push("a");
  generic.push("b");

  print(generic.pop());

  print("Ortalama: ${ortalama<int>(5, 7)}");
    print("Ortalama: ${ortalama<double>(2.7, 6.4)}");
}

//Generic Tipte Fonksiyonlar
double ortalama<T extends num>(T s1, T s2) {
  double ortalama = (s1 + s2) / 2;
  return ortalama;
}
