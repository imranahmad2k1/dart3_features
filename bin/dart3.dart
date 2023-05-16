void main(List<String> arguments) {
  var (a, b) = ("yes", "no");
  print("$a $b");

  (a, b) = (b, a);
  print("$a $b");
}
