void main(List<String> args) {
  // 1- int ve bool parametreli fonksiyon oluştur
  // 1.1- verilen değere kadar olan sayıların toplamını döndürsün, ciftMi bool'u true ise çift sayıların false ise tek sayıların toplamını da döndürsün
  bool ciftMi = false;
  int sayi = 10;
  print(toplamHesaplama(sayi, ciftMi));

  // 2- Dairenin alanını hesaplayan fonksiyon
  print(daireAlaniHesapla(3));
}

int toplamHesaplama(int s, bool ciftMi) {
  int toplam = 0;

  for (var i = 1; i <= s; i++) {
    if (ciftMi && i % 2 == 0) {
      toplam += i;
    } else if (!ciftMi && i % 2 != 0) {
      toplam += i;
    }
  }

  return toplam;
}

double daireAlaniHesapla(double r, [double pi = 3.14]) {
  double alan = pi * r * r;
  return alan;
}
