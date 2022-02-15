// Есть коллекция слов. Реализуйте метод, возвращающий Map.
// Данный Map должен соотносить слово и количество его вхождений в данную коллекцию.
class FourthTask {
  Map<String, int> countCopiesWord(List<String> words) {
    Map<String, int> result = {};
    for (var w in words) {
      if (result[w] != null) {
        result[w] = result[w]! + 1;
      } else {
        result[w] = 1;
      }
    }
    return result;
  }
}
