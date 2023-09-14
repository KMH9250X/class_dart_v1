/// 도전 과제
/// Laptop 클래스 설계 - 멤버 데이터 name, color
/// 생성자 정의
/// MacBook 클래스 설계 Laptop 상속 - 초기화 이니셜라이즈 사용

class Laptop {
  String name;
  String color;

  Laptop(this.name, this.color) {
    print("Laptop 생성자 호출");
  }

  @override
  String toString() {
    return 'Laptop{name: $name, color: $color}';
  }
}

class MacBook extends Laptop {
  MacBook(name, color) : super(name, color) {
    print("초기화 이니셜라이즈에 바디를 붙일 수 있음");
  }
}

void main() {
  MacBook mb = MacBook("프로", "스페이스 그린");
}


