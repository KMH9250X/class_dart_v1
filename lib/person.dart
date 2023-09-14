void main() {
  // Person personKim = new Person();
  Person personKim = Person();
  personKim.displayInfo();
  personKim.myName = "홍길동";
  personKim.phone = "010-1234-5678";
  personKim.age = 20;
  personKim.displayInfo();
}

// 클래스 설계하기
class Person {
  // dart 구버전에서는 모든 변수가 null이 아닌 값으로 세팅됨
  // nullable : 명시적으로 null을 허용여부를 표현할 수 있는 타입
  // String != String?
  String? myName;
  String? phone;
  int? age;

  void displayInfo() {
    print('Person name : $myName');
    print('Phone number : $phone');
    print('Age : $age');
  }
}
