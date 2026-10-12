//Generic Tipler ile Sınıf Oluşturma
class GenericStack<T> {
  List<T> _myList = [];

  push(newElement) {
    _myList.add(newElement);
  }

  T pop() {
    return _myList.removeLast();
  }
}

class IntegerGenericStack {
  List<int> _myList = [];

  push(newElement) {
    _myList.add(newElement);
  }

  int pop() {
    return _myList.removeLast();
  }
}
