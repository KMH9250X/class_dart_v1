main() {
  // Future 타입 선언 연습
  Future<String> name = Future.value("텐코딩");
  Future<int> num = Future.value(100);
  Future<bool> isTrue = Future.value(true);

  print(name);
  print(num);
  print(isTrue);
  print('-------------------------------');

  // Future 타입을 소화 시키는 방법
  // 방법 2 : 콜백 메서드 활용 Future.then() 함수 사용 가능
  name.then((v) => print("Future 타입에서 값 꺼내기 : $v"));
  num.then((value) => print("값 확인 : $value"));
  isTrue.then((value) => print("값 확인 : $value"));
  print('================================');
}
