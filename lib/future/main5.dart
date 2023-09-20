import 'package:http/http.dart' as http;

main() {
  // https://jsonplaceholder.typicode.com/todos/1
  // fetchTodo().then((res) {
  //   print("http status code : ${res.statusCode}");
  //   print('================================');
  //   print("http message Header : ${res.headers}");
  //   print('================================');
  //   print("http message body : ${res.body}");
  // });

  fetchTodoList().then((res) {
    print("http status code : ${res.statusCode}");
    print('================================');
    print("http message Header : ${res.headers}");
    print('================================');
    print("http message body : ${res.body}");
  });
}

Future<http.Response> fetchTodo() async {
  const url = "https://jsonplaceholder.typicode.com/todos/1";
  // get 메서드 안에 URI 객체를 던져야함
  var response = await http.get(Uri.parse(url));
  print(response.runtimeType);
  return response;
}

Future<http.Response> fetchTodoList() async {
  const url = "https://jsonplaceholder.typicode.com/todos";
  // get 메서드 안에 URI 객체를 던져야함
  var response = await http.get(Uri.parse(url));
  return response;
}
