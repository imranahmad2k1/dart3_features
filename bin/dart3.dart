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
}
