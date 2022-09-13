void main(List<String> arguments) {
  isValid("[([]])");
}

bool isValid(String s) {
  if (s.length.isOdd) {
    return false;
  }
  List<String> openingChars = List.empty(growable: true);
  List<String> values = s.split("");
  if (values.first == "}" || values.first == ")" || values.first == "]") {
    return false;
  }
  for (String str in values) {
    if (str == "(" || str == "{" || str == "[") {
      openingChars.add(str);
    } else if (openingChars.isEmpty &&
        (str == "}" || str == ")" || str == "]")) {
      return false;
    } else if ((str == ")" && openingChars.last == "(") ||
        (str == "}" && openingChars.last == "{") ||
        (str == "]" && openingChars.last == "[")) {
      openingChars.removeLast();
    } else {
      return false;
    }
  }
  return openingChars.isEmpty;
}

//SECOND SUBMIT
// bool isValid(String s) {
//   List values = s.split("");

//   if (values.isEmpty || values.length.isOdd) {
//     return false;
//   }
//   List firstList = [];
//   for (int i = 0; firstList.length != values.length;) {
//     firstList.add(values[i]);
//     values.remove(values[i]);
//   }
//   values = values.reversed.toList();
//   for (int i = 0; i < values.length; i++) {
//     if (firstList[i] == "(" && values[i] != ")") {
//       return false;
//     } else if (firstList[i] == "[" && values[i] != "]") {
//       return false;
//     } else if (firstList[i] == "{" && values[i] != "}") {
//       return false;
//     }
//   }
//   return true;
// }

//FIRST SUBMIT
// bool isValid(String s) {
//   List values = s.split("");
//   if (values.isEmpty || values.length.isOdd) {
//     return false;
//   }
//   for (int i = 0; i < values.length; i++) {
//     while (i < values.length) {
//       if (values[i] == "(" && values[i + 1] != ")") {
//         return false;
//       } else if (values[i] == "[" && values[i + 1] != "]") {
//         return false;
//       } else if (values[i] == "{" && values[i + 1] != "}") {
//         return false;
//       } else {
//         i++;
//       }
//     }
//   }
//   return true;
// }
