class Employee {
  // 변수를 private하게 선언 하는 방법 ( _ )
  int? _id;
  String? _name;

  int get id => _id!;

  String get name => _name!;

  set name(String value) {
    _name = value;
  }

  set id(int value) {
    if (value < 0) {
      print("잘못된 값을 입력함");
    } else
      _id = value;
  }
}
