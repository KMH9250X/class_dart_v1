import 'dart:convert';

main() {
  String jsonStr = '''
  {
    "albumId": 1,
    "id": 1,
    "title": "accusamus beatae ad facilis cum similique qui sunt",
    "url": "https://via.placeholder.com/600/92c952",
    "thumbnailUrl": "https://via.placeholder.com/150/92c952"
  }
  ''';

  // 파싱 기술 1 - Map 변환
  // 파싱 기술 2 - 클래스 설계
  // Map<String, dynamic> jsonMap = json.decode(jsonStr);
  // print(jsonMap);

  print(photo.fromJson(json.decode(jsonStr)).toString());
}

class photo {
  int albumId;
  int id;
  String title;
  String url;
  String thumbnailUrl;

  photo(this.albumId, this.id, this.title, this.url, this.thumbnailUrl);

  photo.fromJson(Map<String, dynamic> json)
      : this.albumId = json["albumId"],
        this.id = json["id"],
        this.title = json["title"],
        this.url = json["url"],
        this.thumbnailUrl = json["thumbnailUrl"];

  @override
  String toString() {
    return 'photo{albumId: $albumId, id: $id, title: $title, url: $url, thumbnailUrl: $thumbnailUrl}';
  }
}
