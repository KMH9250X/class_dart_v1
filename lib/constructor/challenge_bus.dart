class challenge_bus {
  int busNumber;
  int price;
  int money;

  challenge_bus(this.busNumber, this.price, this.money);

  int getPrice() {
    return price;
  }

  int getBusNumber() {
    return busNumber;
  }

  void chargePrice() {
    money = money + price;
  }

  @override
  String toString() {
    return 'challenge_bus{busNumber: $busNumber, price: $price, money: $money}';
  }
}
