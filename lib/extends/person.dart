class Person {
  String? name;
  int? age;

  void display() {
    print("name : $name");
    print("age : $age");
  }
}

class Student extends Person {
  String? schoolName;
  String? schoolAddress;

  void display() {
    print("name : $name");
    print("age : $age");
    print("schoolName : $schoolName");
    print("schoolAddress : $schoolAddress");
  }
}

void main() {
  Student st = Student();
  st.name = "홍길동";
  st.age = 30;
  st.schoolName = "그린";
  st.schoolAddress = "부산진구";
  st.display();
}
