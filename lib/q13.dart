void main(List<String> arguments) {
  romanToInt("LVII");
}

int romanToInt(String s) {
  List<String> values = s.split("");
  int sum = 0;
  while (values.isNotEmpty) {
    switch (values[0]) {
      case "I":
        if (values.length > 1) {
          if (values[0 + 1] == "V") {
            values.removeAt(0);
            values.removeAt(0);
            sum += 4;

            break;
          }
          if (values[1] == "X") {
            values.removeAt(0);
            values.removeAt(0);
            sum += 9;

            break;
          }
        }
        values.removeAt(0);
        sum += 1;
        break;
      case "V":
        sum += 5;
        values.removeAt(0);
        break;
      case "X":
        if (values.length > 1) {
          if (values[0 + 1] == "L") {
            values.removeAt(0);
            values.removeAt(0);
            sum += 40;

            break;
          }
          if (values[1] == "C") {
            values.removeAt(0);
            values.removeAt(0);
            sum += 90;

            break;
          }
        }
        values.removeAt(0);
        sum += 10;
        break;
      case "L":
        sum += 50;
        values.removeAt(0);
        break;
      case "C":
        if (values.length > 1) {
          if (values[1] == "D") {
            values.removeAt(0);
            values.removeAt(0);
            sum += 400;

            break;
          }
          if (values[1] == "M") {
            values.removeAt(0);
            values.removeAt(0);
            sum += 900;

            break;
          }
        }
        values.removeAt(0);
        sum += 100;
        break;
      case "D":
        sum += 500;
        values.removeAt(0);

        break;
      case "M":
        sum += 1000;
        values.removeAt(0);

        break;
      default:
    }
  }
  return sum;
}
