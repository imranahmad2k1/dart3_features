void main() {
  final first = 1;
  final second = 2;

  final position = second;
  final bool competitor = true;

  final result = switch (position) {
    1 when competitor => "You have gotten first Position",
    2 when competitor => "You have gotten second Position",
    _ => "Something wrong",
  };

  print(result);
}
