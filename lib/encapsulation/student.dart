class student {
  // 이름, 나이 private 선언
  // 축약형 get, set 메서드 생성
  //
  String? _name;
  int? _age;

  String get name => _name!;

  set name(String value) => _name = value;

  int get age => _age!;

  set age(int value) => _age = value;
}
