// ignore_for_file: avoid_print

import 'tasks/fifth_task.dart';
import 'tasks/first_task.dart';
import 'tasks/fourth_task.dart';
import 'tasks/point.dart';
import 'tasks/second_task.dart';
import 'tasks/third_task.dart';
import 'tasks/seven_task.dart';
import 'tasks/user.dart';
import 'tasks/user_manager.dart';

void main(List<String> args) {
  FirstTask firstTask = FirstTask();
  SecondTask secondTask = SecondTask();
  ThirdTask thirdTask = ThirdTask();
  FourthTask fourthTask = FourthTask();
  FifthTask fifthTask = FifthTask();
  Point point = Point(2, 1, 1);
  AdminUser user = AdminUser('email@gmail.com');
  GeneralUser generalUser = GeneralUser('general_email@gmail.com');
  AdminUser adminUser = AdminUser('admin_email@gmail.com');
  UserManager userManager = UserManager();

  print('main');

  print('firstTask : gcd(35, 25) = ${firstTask.gcd(35, 25)}');
  print('firstTask : lcm(35, 25) = ${firstTask.lcm(35, 25)}');
  print('firstTask : primeFactors(34) = ${firstTask.primeFactors(34)}');

  print('secondTask : decimalToBinary(10) = ${secondTask.decimalToBinary(10)}');
  print(
      'secondTask : decimalToBinary(111) = ${secondTask.binaryToDecimal(111)}');

  print(
      'thirdTask : findNums(wrod 2 4.5 qwerty 4,3 jojo 7) = ${thirdTask.findNums('wrod 2 4.5 qwerty 4,3 jojo 7')}');

  print(
      'fourthTask : countCopiesWord(asd, qwe, qwe, ert, qwe, vcxsd, ert, asd) = ${fourthTask.countCopiesWord(
    ['asd', 'qwe', 'qwe', 'ert', 'qwe', 'vcxsd', 'ert', 'asd'],
  )}');

  print(
      'fifthTask : findNums(one, two, three, cat, zero, dog) = ${fifthTask.findNums(
    ['one', 'two', 'three', 'cat', 'zero', 'dog'],
  )}');

  print(
      'sixthTask : distanceTo(Point.one()) = ${point.distanceTo(Point.one())}');
  print(
      'sixthTask : squareTriangle(point, Point.one(), Point.zero()) = ${point.squareTriangle(point, Point.one(), Point.zero())}');

  print('sevenTask : extension -3.sqrtN(-2) = ${-3.sqrtN(-2)}');

  print('eightTask : admin mail ${user.email} = ${user.getMailSystem()}');
  userManager.addUser(generalUser);
  userManager.addUser(adminUser);
  userManager.addUser(generalUser);
  userManager.addUser(adminUser);
  userManager.addUser(adminUser);
  userManager.addUser(generalUser);
  userManager.printMailUsers();
  print('eightTask : userManager users = ${userManager.users}');
  userManager.removeUser(generalUser);
  userManager.printMailUsers();
}
