void main(List<String> args) {
  //Parametresiz Fonksiyon
  cevreHesaplama();

  //Parametreli Fonksiyon
  alanHesaplama(4, 7);

  // değer döndüren (return) fonksiyon
  print(hacimHesaplama(3, 4, 5));

  // fonksiyonun kısa gösterimi
  int kare = kareAlma(4);
  print("4^2 = $kare");

  // Girilmesi zorunlu olmayan parametreli fonksiyon
  print(toplama(4, 11));
  print(toplama(4, 11, 3));
}

void cevreHesaplama() {
  int en = 5, boy = 3;
  int cevre = (5 + 3) * 2;

  print("En: $en, Boy: $boy \nÇevre: $cevre");
}

void alanHesaplama(int en, int boy) {
  int alan = en * boy;

  print("En: $en, Boy: $boy \nAlan: $alan");
}

int hacimHesaplama(int en, int boy, int yukseklik) {
  int hacim = en * boy * yukseklik;

  return hacim;
}

int kareAlma(int sayi) => sayi * sayi;

int toplama(int s1, int s2, [int s3 = 0]) {
  return s1 + s2 + s3;
}
