abstract class Shape {
  // 추상 메서드 선언
  double area(); // 메서드의 바디가 없고 선언부만 존재

  void display() {
    print("this is a shape");
  }
}

// 자식 클래스는 보다 구체적인 클래스로 설계 해야함
// 클래스를 앱스트랙트하게 만들거나 부모 추상클래스의 추상메서드를 구현해야함
class Circle extends Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }

  @override
  void display() {
    print("원의 반지름 : $radius");
  }
}

class Rectangle extends Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }

  @override
  void display() {
    print("직사각형의 가로 : $width, 세로 : $height");
  }
}

void main() {
  // 추상 클래스는 new와 생성자를 호출 할 수 없음 (정의는 가능)
  // Shape sp = new Shape();

  Circle cc = Circle(5);
  Rectangle rec = Rectangle(4, 6);

  List<Shape> list = [cc, rec];
  for (var s in list) {
    s.display();
    print(s.area());
    print("============");


    // dart에서 익명 구현 클래스 개념은 없음
  }
}
