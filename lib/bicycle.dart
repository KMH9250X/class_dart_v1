class Bicycle {
  String? color;
  int? size;
  int? currentSpeed;

  Bicycle() {
    print('기본 생성자 호출이 되는지 체크');
  }

  void changeGear(int gear) {
    currentSpeed = gear;
  }

  void showInfo() {
    print("Color : $color");
    print("Size : $size");
    print("Current Speed : $currentSpeed");
  }
}
