import 'dart:io';

void main() {
  stdout.write("Masukkan Nilai :");
  String? line = stdin.readLineSync();
  int input = int.tryParse(line ?? '') ?? 0;
  stdout.writeln(Sloane.OEIS(input));
}

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
