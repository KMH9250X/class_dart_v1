main() async {
  // 미래 타입 선언 연습
  Future<String> name = Future.value("텐코딩");
  Future<int> num = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(num);
  print(isTrue);
  print('-------------------------------');

  // Future 타입을 소화 시키는 방법
  // 방법 1 : 코드를 동기적으로 처리
  print(await name);
  print(await num);
  print(await isTrue);
}
