void main(List<String> arguments) {
  final diffTypeDart3List = diffTypesDart3();
  print(diffTypeDart3List.$1); //$1 for accessing first value
  print(diffTypeDart3List.$2); //$2 for accessing second value

  final diffTypeDart3PatternsList = diffTypesDart3Patterns();
  print(diffTypeDart3PatternsList
      .stringsentence); //Accessing named parameter string value
  print(diffTypeDart3PatternsList
      .doublevalue); //Accessing named parameter double value
}

//BetterWay Dart3 for returning different data types
(String, double) diffTypesDart3() {
  return ("My data type is Known", 10.0);
}

({String stringsentence, double doublevalue}) diffTypesDart3Patterns() {
  return (stringsentence: "Advanced: My data type is Known", doublevalue: 50.0);
}
