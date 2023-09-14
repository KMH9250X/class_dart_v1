class Person {
  String? name;
  int? age;

  // String phone;

  // 기본 생성자
  Person(this.name, this.age);

  // Person(this.name, this.age, this.phone);

  // named 생성자
  Person.fromBirthYear(String name, int birthYear) {
    this.name = name;
    this.age = birthYear;
  }
}

void main() {
  //기본 생성자를 통해 인스턴스 생성
  Person ps = Person("이순신", 30);
  var ps2 = Person("홍기동", 35);
  print(ps.runtimeType);
  print(ps2.runtimeType);

  // named 생성자로 인스턴스 생성

  var ps3 = Person.fromBirthYear("허균", 1995);
  print(ps3.age);
}
