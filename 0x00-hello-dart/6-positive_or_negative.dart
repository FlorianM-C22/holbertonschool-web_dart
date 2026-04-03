void main(List<String> args) {
  var number = args[0];
  var n = int.parse(number);
  if (n > 0) {
    print('$n is positive');
  } else if (n < 0) {
    print('$n is negative');
  } else {
    print('$n is zero');
  }
}
