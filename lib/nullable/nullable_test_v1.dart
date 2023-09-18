main() {
  String name = "jhon";
  int age = 30;
  // 위의 변수들은 null이 아닌 값만 가질 수 있음

  String? nullableName;
  int? nullagleInt;
  // 위의 변수들은 null을 가질 수 있음

  // 방어적 코드 : 널검사
  if (nullableName != null) {
    print("name : $nullableName");
  }
}
