class NumberPrinter {
  int _id; // 식별자
  static int waitNumber = 1; // 선언과 동시에 초기화

  NumberPrinter(this._id);

  void printWaitNumber() {
    print("대기순번 : ${waitNumber++}");
  }
}

void main() {
  NumberPrinter np = NumberPrinter(1);
  np.printWaitNumber();
  np.printWaitNumber();
  np.printWaitNumber();
  np.printWaitNumber();

  NumberPrinter np2 = NumberPrinter(2);
  np2.printWaitNumber();
  np2.printWaitNumber();
  np2.printWaitNumber();
  np2.printWaitNumber();
}
