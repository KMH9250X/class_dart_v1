class Animal {
  //속성
  int? foot;

  //기능
  void run() {
    print('달림');
  }
}

void main() {
  Animal an = Animal();
  an.foot = 4;
  an.run();
  print(an.foot);
}
