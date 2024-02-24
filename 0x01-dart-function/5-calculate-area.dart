double calculateArea(double height, double base) {
  // Area of triangle = 0.5 * base * height
  double area = 0.5 * base * height;
  // Round the area to two decimal places
  return double.parse((area).toStringAsFixed(2));
}

void main() {
  print(calculateArea(20, 7));
  print(calculateArea(10, 7));
  print(calculateArea(8.5, 3.7));
}
