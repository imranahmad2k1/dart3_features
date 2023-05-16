void main(List<String> arguments) {
  final sameTypeList = sameType();
  print(sameTypeList[0]);
  print(sameTypeList[1]);

  final diffTypeList = diffTypes();
  print(diffTypeList[0]);
  print(diffTypeList[1]);

  final diffTypeDart3List = diffTypesDart3();
  print(diffTypeDart3List.$1); //$1 for accessing first value
  print(diffTypeDart3List.$2); //$2 for accessing second value
}

List<int> sameType() {
  return [1, 2];
}

List<dynamic> diffTypes() {
  //Problem is when you return List<dynamic> you don't know what data types you are returning
  return ["This is a String", 999.00];
}

//BetterWay Dart3

(String, double) diffTypesDart3() {
  return ("My data type is Known", 10.0);
}
