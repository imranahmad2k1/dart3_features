void main() {
  List<dynamic> listOfItems = ["HI", 5];
  int index = 5;
  switch (listOfItems) {
    //now you can check for list items and also can use OR and AND
    case ["hello" || "HI", 10 || 5] when index == 5:
      print("Hello Imran");
    default:
      print("Didn't work");
  }
}


//Problem reported to Dart Github
//Dart 3 when statement with switch doesn't work after continue newCase;
//https://github.com/dart-lang/language/issues/3077
// void main() {
//   String greetings = "Hello";
//   bool check = true;
//   switch (greetings) {
//     case "Hi" || "Hello" when check:
//       print("Hello Imran");
//       continue newcase;
//     newcase:
//     case "Hello" when check == false:
//       print("Hello Hello");
//     default:
//       print("Didn't work");
//   }
// }
