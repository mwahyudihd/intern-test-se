class Sloane {
  Sloane();

  static String OEIS(int inputData) {
    List<String> result = [];
    int current = 1;
    for (int loop = 0; loop < inputData; loop++) {
      current += loop;
      result.add(current.toString());
    }
    return result.join('-');
  }
}
