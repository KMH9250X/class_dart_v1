mixin ElectricCar {
  chargeElectricity() {
    print("전기 충전");
  }
}

mixin PetrolCar {
  chargePetrol() {
    print("휘발유 보충");
  }
}

// 전기 자동차
class Car1 with ElectricCar {}

class Car2 with PetrolCar {}

class HybridCar with ElectricCar, PetrolCar {
  @override
  chargeElectricity() {
    super.chargeElectricity();
    print("테슬라 전용 충전");
  }

  @override
  chargePetrol() {
    super.chargePetrol();
    print("GS 칼텍스 주유 시작");
  }
}
