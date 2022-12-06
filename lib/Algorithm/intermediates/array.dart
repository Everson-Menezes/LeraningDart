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
}
