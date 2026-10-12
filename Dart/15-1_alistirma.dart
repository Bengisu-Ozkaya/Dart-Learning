void main(List<String> args) async {
  // Alıştırma: id alan parametreli bir fonksiyonun 3 saniye sonra kişi bilgilerini getirmesini sonrasında da bu id'li kullanıcının username'i kullanılarak aldığı kursların 3 sn sonra geitrilmesi
  Map<String, dynamic> userMap = await getUserInfo(2);

  String userName = userMap['username'];
  List<String> courseLsit = await getUserCourseList(userName);

  print(userMap);
  print(courseLsit);
}

Future<Map<String, dynamic>> getUserInfo(int id) {
  print("$id ID'sine sahip kullanıcının bilgileri getiriliyor.");
  return Future.delayed(Duration(seconds: 3), () {
    return {'username': "bengi", 'id': 2};
  });
}

Future<List<String>> getUserCourseList(String username) {
  print("$username adlı kullanıcının aldığı kurslar getiriliyor");
  return Future.delayed(Duration(seconds: 2), () {
    return ["Dart", "Flutter", "Java", "C#"];
  });
}
