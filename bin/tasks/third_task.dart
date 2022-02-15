// Реализуйте метод, который принимает строку слов, разделённых пробелами.
// Задача — найти в данной строке числа и вернуть коллекцию num этих чисел.
class ThirdTask {
  List<num> findNums(String s) {
    List<String> words = s.split(' ');
    List<num> findNums = [];
    for (var w in words) {
      if (num.tryParse(w.replaceAll(',', '.')) != null) {
        findNums.add(num.parse(w.replaceAll(',', '.')));
      }
    }
    return findNums;
  }
}
