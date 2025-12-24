import 'dart:io';

import 'problem_01.dart';

void main() {
  int? number;
  stdout.writeln("Pilih Program:");
  stdout.writeln("1. Sloane OEIS");
  stdout.writeln("2. Dense Rank");
  stdout.writeln("3. Highest Palindrome");
  stdout.write("Masukkan Pilihan (1-3): ");
  number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (number == 3) {
    stdout.writeln("=== Highest Palindrome Program ===");
  } else if (number == 2) {
    stdout.writeln("=== Dense Rank Program ===");
  } else {
    stdout.writeln("=== Sloane OEIS Program ===");
    stdout.write("INPUT: ");
    String? line = stdin.readLineSync();
    int input = int.tryParse(line ?? '') ?? 0;
    stdout.write("OUTPUT: ");
    stdout.writeln(Sloane.OEIS(input));
  }
}
