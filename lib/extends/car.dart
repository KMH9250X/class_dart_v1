// 상속을 하면 안되는 경우
class Engine {
  String? name;
  int? price;
}

class Car {
  Engine? engine; // 포함관계 composition
  String? name;
  int? price;
}
