// Реализуйте класс Point, который описывает точку в трёхмерном пространстве.
// У данного класса реализуйте метод distanceTo(Point another), который возвращает расстояние от данной точки до точки в параметре.
// По желанию можете реализовать метод, принимающий три точки в трёхмерном пространстве и возвращающий площадь треугольника,
// который образуют данные точки. Реализуйте factory-конструкторы для данного класса, возвращающие начало координат,
// и ещё несколько на своё усмотрение (например, конструктор, возвращающий точку с координатами [1,1,1],
// которая определяет единичный вектор).
// SixthTask
import 'dart:math';

class Point {
  final double x;
  final double y;
  final double z;

  Point(this.x, this.y, this.z);

  factory Point.one() {
    return Point(1, 1, 1);
  }

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  double distanceTo(Point another) {
    return sqrt(
        pow(another.x - x, 2) + pow(another.y - y, 2) + pow(another.z - z, 2));
  }

  double squareTriangle(Point p1, Point p2, Point p3) {
    double side1 = _distanceBetween(p1, p2);
    double side2 = _distanceBetween(p1, p3);
    double side3 = _distanceBetween(p2, p3);
    double semiP = (side1 + side2 + side3) / 2;

    return sqrt((semiP - side1) * (semiP - side2) * (semiP - side3) * semiP);
  }

  double _distanceBetween(Point p1, Point p2) {
    return sqrt(
        pow(p1.x - p2.x, 2) + pow(p1.y - p2.y, 2) + pow(p1.z - p2.z, 2));
  }
}
