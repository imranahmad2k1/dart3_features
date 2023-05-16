void main(List<String> arguments) {
  final jsoned = {
    "userID": 2,
    "name": "Imran",
    "job": "Coder",
  };

  //old
  print('${jsoned["name"]} is a professional ${jsoned["job"]} ');

  //new
  final {'name': username, 'job': userjob} = jsoned;
  print("$username is a professional $userjob");

  //above is error prone, to check and avoid errors
  //if condition can't have final keyword, so we specify types
  if (jsoned case {'name': String username, 'job': String userjob}) {
    print("Errorless way: $username is a professional $userjob");
  } else {
    print("Incorrect JSON");
  }

  //same thing can be done with Switch

  switch (jsoned) {
    case {'name': String username, 'job': String userjob}:
      print("$username is a professional $userjob");
    //there is no break; when you write atleast one statement, dart puts break; by default in Dart 3
    //but if you dont write any statement, dart won't put break;
    default:
      print("Incorrect JSON");
  }
}
