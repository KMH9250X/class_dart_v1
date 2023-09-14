class Passbook {
  String? _name;
  String? _accountNumber;
  int? _accountBalance;

  Passbook(this._name, this._accountNumber, this._accountBalance);

  String get name => _name!;

  String get accountNumber => _accountNumber!;

  int get accountBalance => _accountBalance!;

  set name(String value) => _name = value;

  set accountBalance(int value) => _accountBalance = value;

  set accountNumber(String value) => _accountNumber = value;

  void deposit(int money) {
    // this.accountBalance += money;
    this._accountBalance = (this._accountBalance ?? 0) + money;
    print("입금 완료");
  }

  int withdraw(int money) {
    int currentMoney = this._accountBalance ?? 0;
    if (currentMoney < money) {
      print("잔액 부족");
      return 0;
    } else {
      currentMoney -= money;
      this._accountBalance = currentMoney;
      return money;
    }
  }
}
