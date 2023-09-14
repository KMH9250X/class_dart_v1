void main() {
  Employee ep = Employee("홍길동", 30);
  ep.display();
  print("================================");

}

class Employee {
  String? name;
  int? age;
  String? subject;
  double? salary;

  // 1단계 : 생성자 안의 []는 옵션값, 받아도 되고 안 받아도 되는 값
  // Employee(this.name, this.age, [this.subject, this.salary]);

  // 2단계 : 생성자 옵션에 기본값을 할당해 줄 수 있다
  Employee(this.name, this.age, [this.subject = "N/A", this.salary = 0.0]);

  void display() {
    print('NAME : ${this.name}');
    print('age : ${this.age}');
    print('subject : ${this.subject}');
    print('salary : ${this.salary}');
  }
}