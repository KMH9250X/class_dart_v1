class Table {
  String? name;
  String? color;
  //이름이 있는 매개변수는 중괄호로 선언해 가독성을 높일 수 있음
  Table({this.name, this.color});


  void display() {
    print("name : $name");
    print("color : $color");

  }
}

void main() {
  // Table table1 = Table("이케아의자", "블랙");
  Table table1 = Table(color: "red", name: "데스커");
  table1.display();
}