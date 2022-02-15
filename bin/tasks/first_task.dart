// Реализуйте методы вычисления НОД и НОК целых чисел. Реализуйте метод, который разбивает число на простые множители и возвращает их.
class FirstTask {
// НОД - наибольший общий делитель (greatest common divisor)
  int gcd(int a, int b) {
    return b != 0 ? gcd(b, a % b) : a;
  }

// НОК - наименьшее общее кратное (least common multiple)
  int lcm(int a, int b) {
    return (a / gcd(a, b) * b).toInt();
  }

// Разбитие числа на простые множители
  List<int> primeFactors(num a) {
    int div = 2;
    List<int> result = [1];
    while (a > 1) {
      while (a % div == 0) {
        result.add(div);
        a = a / div;
      }
      div++;
    }
    return result;
  }
}
