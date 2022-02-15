// Реализуйте метод, который вычисляет корень любой заданной степени из числа.
// Реализуйте данный метод как extension-метод для num.
// Алгоритм можете взять на википедии как «Алгоритм нахождения корня n-й степени».
// Запрещается использовать методы math. В случае когда значение вернуть невозможно, необходимо бросать исключение с описанием ошибки.

extension SevenTask on num {
  num sqrtN(int degree) {
    double eps = 0.00001;
    try {
      double result = this / degree;
      num rn = this;
      while ((((result - rn) < 0) ? -(result - rn) : (result - rn)) >= eps) {
        rn = this;
        for (int i = 1; i < degree; i++) {
          rn = rn / result;
        }
        result = 0.5 * (rn + result);
      }
      return result;
    } catch (e) {
      throw Exception('Error sqrtN : ${e.toString()}');
    }
  }
}
