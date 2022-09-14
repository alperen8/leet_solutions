void main(List<String> arguments) {
  longestCommonPrefix(["flower", "flow", "flight"]);
}

String longestCommonPrefix(List<String> strs) {
  if (strs.first == "" || strs.isEmpty) {
    return "";
  }
  String longestString = "";
  List<List<String>> values = List.empty(growable: true);
  for (String st in strs) {
    values.add(st.split(""));
  }
  int shortestLenght = values.first.length;
  int shortestIndex = 0;
  for (int i = 0; i < values.length; i++) {
    if (shortestLenght > values[i].length) {
      shortestIndex = i;
    }
  }
  for (int i = 0; i < values[shortestIndex].length;) {
    while (i < values[shortestIndex].length) {
      if (checkContainsInWord(longestString + values[shortestIndex][i], strs)) {
        longestString += values[shortestIndex][i];
      }
      i++;
    }
  }
  return longestString;
}

bool checkContainsInWord(String st, List<String> values) {
  for (String word in values) {
    if (!word.startsWith(st)) {
      return false;
    }
  }

  return true;
}


//FIRST SUBMIT

// String longestCommonPrefix(List<String> strs) {
//   String longestString = "";
//   String tempString = "";
//   List<List<String>> values = List.empty(growable: true);
//   for (String st in strs) {
//     values.add(st.split(""));
//   }
//   for (int i = 0; i < values.first.length; i++) {
//     if (checkContainsInList(values.first[i], values)) {
//       longestString += values.first[i];
//       break;
//     } else {
//       return "";
//     }
//   }

//   for (int i = 0; i < values.first.length;) {
//     if (checkContainsInList(values.first[i], values)) {
//       tempString += values.first[i];

//       if (i + 1 < values.first.length) {
//         try {
//           while (checkContainsInList(values.first[i + 1], values)) {
//             i++;
//             tempString += values.first[i];
//           }
//         } catch (e) {}
//       }
//     }

//     if (tempString.length > longestString.length) {
//       longestString = tempString;
//     }
//     tempString = "";
//     i++;
//   }
//   print(longestString);
//   return longestString;
// }


//Second submit
// String longestCommonPrefix(List<String> strs) {
//   String longestString = "";
//   String tempString = "";
//   List<List<String>> values = List.empty(growable: true);
//   for (String st in strs) {
//     values.add(st.split(""));
//   }
//   int shortestLenght = values.first.length;
//   int shortestIndex = 0;
//   for (int i = 0; i < values.length; i++) {
//     if (shortestLenght > values[i].length) {
//       shortestIndex = i;
//     }
//   }
//   longestString = values.first.isEmpty ? "" : values.first.first;
//   if (!checkContainsInList(longestString, values)) {
//     return "";
//   }
//   // for (int i = 0; i < values[shortestIndex].length; i++) {
//   //   if (checkContainsInList(values[shortestIndex][i], values)) {
//   //     longestString += values[shortestIndex][i];
//   //     break;
//   //   } else {
//   //     return "";
//   //   }
//   // }

//   for (int i = 0; i < values[shortestIndex].length;) {
//     if (checkContainsInList(values.first[i], values)) {
//       tempString += values[shortestIndex][i];

//       if (i + 1 < values[shortestIndex].length) {
//         try {
//           while (checkContainsInList(values[shortestIndex][i + 1], values)) {
//             i++;
//             tempString += values[shortestIndex][i];
//           }
//         } catch (e) {}
//       }
//     }

//     if (tempString.length > longestString.length &&
//         checkContainsInWord(tempString, strs)) {
//       longestString = tempString;
//     }
//     break;
//   }
//   print(longestString);
//   return longestString;
// }

// bool checkContainsInList(String st, List<List<String>> values) {
//   bool contains = true;
//   for (List<String> words in values) {
//     if (!words.contains(st)) {
//       contains = false;
//     }
//   }

//   return contains;
// }

// bool checkContainsInWord(String st, List<String> values) {
//   bool contains = true;
//   for (String word in values) {
//     if (!word.contains(st)) {
//       contains = false;
//     }
//   }

//   return contains;
// }