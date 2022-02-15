// Реализуйте методы для преобразования целых чисел из десятичной системы в двоичную и обратно.
class SecondTask {
  String decimalToBinary(int a) {
    List<int> result = [];
    while (a > 0) {
      result.add(a % 2);
      a = a ~/ 2;
    }
    return result.reversed.join();
  }

  int binaryToDecimal(int a) {
    int result = 0;
    int base = 1;

    int temp = a;
    while (temp != 0) {
      int lastDigit = temp % 10;
      temp = temp ~/ 10;

      result += lastDigit * base;

      base = base * 2;
    }

    return result;
  }
}
