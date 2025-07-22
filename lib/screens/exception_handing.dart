void main() {
  // int firtsNumber = 0;
  // int secondNumber = 0;
  // int result;

  // stdout.write("Enter firts Number:");
  // firtsNumber = int.parse(stdin.readLineSync()!);

  // stdout.write("Enter second  Number:");
  // secondNumber = int.parse(stdin.readLineSync()!);

  // try {
  //   result = firtsNumber ~/ secondNumber;
  //   print("Result: $result");
  // } catch (e) {
  //   print("Error: Cannot divide by zero");
  // }

  try {
    checkAge(17);
  } catch (e) {
    print(e);
  }
}

void checkAge(int age) {
  if (age < 18) {
    throw Exception('You must be 18+');
  }
}
