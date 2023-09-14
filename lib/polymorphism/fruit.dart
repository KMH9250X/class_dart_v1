class Fruit {
  String name;
  int price;

  Fruit(this.name, this.price);

  @override
  String toString() {
    return 'fruit{name: $name, price: $price}';
  }
}

class Peach extends Fruit {
  Peach(super.name, super.price);
}

class Banana extends Fruit {
  String origin;

  Banana(super.name, super.price, this.origin);
}

void main() {
  //업캐스팅, 다운캐스팅

  List<Fruit> list = [Banana("과당바나나", 3000, "필리핀"), Peach("딱복", 1000)];
  list[0].name;
  list[0].price;
  list[0].toString();
  // list[0].origin;

  // 업캐스팅 된 상태, 바나나의 origin 변수에 접근하고 싶다면?
  // 컴파일 시점에 형변환 처리
  // Banana banana1 = ((Banana) list[0]).origin; <- 자바에서 다운캐스팅 하는 문법
  Banana banana1 = list[0] as Banana;
  banana1.origin;
  // as : 상속 관계에서 형변환 처리 가능

}
