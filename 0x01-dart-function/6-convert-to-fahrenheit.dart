List<double> convertToF(List<double> temperaturesInC) {
  return temperaturesInC.map((celsius) {
    double fahrenheit = (celsius * 9 / 5) + 32;
    // Round the temperature to two decimal places
    return double.parse((fahrenheit).toStringAsFixed(2));
  }).toList();
}

void main() {
  print(convertToF([25, 26, 23, 27, 30]));
  print(convertToF([22.5, 26, 27.3, 23.6, 25]));
  print(convertToF([-4.2, -2, 0.5, -5, -1.7]));
}
