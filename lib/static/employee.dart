class Employee {
  String name;
  int? empNo;
  static int autoIncrement = 10000;

  Employee(this.name) {
    // this.name = name;
    empNo = ++autoIncrement;
  }

  // 함수 : 독립적인 일련의 코드 묶음
  // 메서드 :
  void display() {
    print("이름 : $name");
    print("사원 번호 : $empNo");
  }
}

void main() {
  // Employee 클래스 안에 사원번호 데이터를 받는 변수를 선언하기
  // 단, Enployee 클래스가 인스턴스화 되면 사원번호는 자동으로 1씩 증가할 수 있도록 작성
  Employee emp = Employee("사원1");
  Employee emp2 = Employee("사원2");
  Employee emp3 = Employee("사원3");
  Employee emp4 = Employee("사원4");

  emp.display();
  emp2.display();
  emp4.display();
  emp3.display();

  print(Employee.autoIncrement);
}
