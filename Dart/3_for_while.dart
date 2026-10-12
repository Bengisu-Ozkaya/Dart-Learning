void main(List<String> args) {
  //for döngüsü
  /*for (var i = 0; i <= 5; i++) {
    print(i);
  }

  // while döngüsü
  int i = 0;
  while (i <= 5) {
    print(i);
    i++;
  }*/

  // break - continue
  for (var i = 0; i <= 10; i++) {
    if (i == 4) {
      print("continue çalışacak");
      continue;
    }

    if (i >= 7) {
      print("break çalışacak");
      break;
    }

    print(i);
  }

  //çift sayıları yazdırma
  for (var i = 1; i < 21; i++) {
    if (i % 2 != 0) {
      continue;
    } else {
      print(i);
    }
  }

  //tek sayıları yazdırma
  for (var i = 1; i < 21; i++) {
    if (i % 2 == 0) {
      continue;
    } else {
      print(i);
    }
  }
}
