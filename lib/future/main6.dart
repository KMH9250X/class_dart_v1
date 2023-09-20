import 'package:http/http.dart' as http;

main() {
  // HTTP 요청 및 응답 처리를 직접 작성
  // https://jsonplaceholder.typicode.com/posts/10
  // https://jsonplaceholder.typicode.com/posts

  // petchPotos().then((value) => print(value.body));
  petchPotosList().then((value) => print(value.body));

}

Future<http.Response> petchPotos() async {
  return await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts/10"));
}

Future<http.Response> petchPotosList() async {
  return await http.get(Uri.parse("https://jsonplaceholder.typicode.com/posts"));
}