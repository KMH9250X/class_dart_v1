// await 키워드를 가지는 함수는 선언부에 async를 선언해야 함(규칙)
main() async {
  //동기성 - 모든 코드가 순차적으로 진행
  //비동기성 - 코드가 동시다발적으로 실행, 순차적 실행을 보장할 수 없는 형태

  print("task 1 .....");
  var data1 = await fetchData(); // 기대 값 : "2초 data" 문자열
  // 실제 출력 값 : data1 : Instance of 'Future<String>' (미래 타입)
  print(data1.runtimeType);
  print("data1 : $data1");
  print("task 2 .....");
  print("task 3 .....");
}

Future<String> fetchData() {
  // 2초 후에 실행 되는 코드를 작성
  // return Future.delayed(const Duration(seconds: 2), () {
  //   return "2ch data";
  // });

  // 위의 주석 처리한 코드와 동일한 람다표현식
  return Future.delayed(const Duration(seconds: 2), () => "2초 data");
}
