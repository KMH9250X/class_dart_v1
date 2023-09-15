abstract class Shape {
  double area();
}

// implements : 강제성이 있는 행동 규약
class Circle implements Shape {
  double radius;

  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle implements Shape {
  double width;
  double height;

  Rectangle(this.width, this.height);

  @override
  double area() {
    return width * height;
  }
}

void main() {
  List<Shape> list = [Circle(5.0), Rectangle(4.0, 5.0)];
  list.forEach((e) => print(e.area()));


}

