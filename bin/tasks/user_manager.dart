// Создайте класс User, у которого есть поле email.
// Реализуйте два наследника данного класса AdminUser и GeneralUser.
// Реализуйте mixin над классом User, у которого будет метод getMailSystem,
// который возвращает значение из email, которое находится после @.
// Например, если email пользователя user@mail.ru, то данный метод вернёт mail.ru.
// Используйте данный миксин на AdminUser. Далее реализуйте класс UserManager<T extends User>,
// у которого будет храниться список пользователей и будут методы добавления или удаления их.
// Также в UserManager реализуйте метод, который выведет почту всех пользователей,
// однако если пользователь admin, будет выведено значение после @. Проверьте реализованные методы на практике.

// ignore_for_file: avoid_print

import 'user.dart';

class UserManager<T extends User> {
  List<T> users = [];

  void addUser(T user) {
    users.add(user);
  }

  void removeUser(T user) {
    users.remove(user);
  }

  void printMailUsers() {
    for (var user in users) {
      if (user is AdminUser) {
        print('AdminUser: ${user.getMailSystem()}');
      } else {
        print('OtherUser: ${user.email}');
      }
    }
  }
}
