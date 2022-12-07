import 'package:flutter/foundation.dart';

class Array {
  Array();

  void sumallinrange(List<int> array) {
    if (array.isEmpty) return;

    int resultFor = 0;
    int resultForEach = 0;
    int resultWhile = 0;
    int resultDoWhile = 0;

    for (var i = 0; i < array.length; i++) {
      if (array[i] != 0) {
        resultFor += array[i];
      }
    }

    for (var i in array) {
      if (i != 0) {
        resultForEach += i;
      }
    }
    int i = 0;

    while (i < array.length) {
      if (array[i] != 0) resultWhile += array[i];
      i++;
    }
    i = 0;

    do {
      if (array[i] != 0) resultDoWhile += array[i];
      i++;
    } while (array.length > i);

    var result = {
      'ForResult': resultFor,
      'ForEachResult': resultForEach,
      'WhileResult': resultWhile,
      'DoWhileResult': resultDoWhile
    };
    print(result);
  }

  List<Object> diffarray(List<Object> a, List<Object> b) {
    List<Object> result = [];

    List<Object> equals = [];
    List<Object> difference = [];

    for (var i = 0; i < a.length; i++) {
      for (var j = 0; j < b.length; j++) {
        if (a[i] == b[j]) {
          equals.add(a[i]);
        } else {
          if (!difference.contains(a[i])) {
            difference.add(a[i]);
          }
          if (!difference.contains(b[j])) {
            difference.add(b[j]);
          }
        }
      }
    }

    for (var x in equals) {
      difference.remove(x);
    }

    result.addAll(difference);

    return result;
  }
}
