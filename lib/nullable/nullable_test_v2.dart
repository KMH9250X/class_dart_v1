main() {
  // 1. null에 안전한 객체의 사용 가능한 속성 접근
  String? maybeName;
  int length = maybeName?.length ?? 0;
  // maybeName 변수가 null이 아니면 문자열 길이 리턴, null이면 값을 0으로 반환
  print("length : $length");

  // 2. null에 안전한 객체 메서드 접근
  String? name = getName(); // null 또는 문자열을 반환
  String returnName = name?.toLowerCase() ?? "HONG"; // ?? : null 병합 연산자
  print("returnName : $returnName");

  // 3
  String displayName = name ?? "Unknown";
  print("displayName : $displayName");
}

String? getName() {
  return null;
}

