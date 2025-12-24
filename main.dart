import 'dart:io';

import 'problem_01.dart';
import 'problem_02.dart';
import 'problem_03.dart';

void main() {
  int? number;
  stdout.writeln("Choose The Program:");
  stdout.writeln("1. Sloane OEIS");
  stdout.writeln("2. Dense Rank");
  stdout.writeln("3. Highest Palindrome");
  stdout.write("Masukkan Pilihan (1-3): ");
  number = int.tryParse(stdin.readLineSync() ?? '') ?? 0;

  if (number == 3) {
    stdout.writeln("=== Highest Palindrome Program ===");
    stdout.write("INPUT number: ");
    int inputNumber = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    stdout.write("OUTPUT: ");
    stdout.writeln(
      Palindrome().highest(inputNumber, inputNumber.toString().length),
    );
  } else if (number == 2) {
    stdout.writeln("=== Dense Rank Program ===");
    stdout.write("INPUT number of players: ");
    int players = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    stdout.write("INPUT Scores (space separated): ");
    String? scoresLine = stdin.readLineSync();
    List<int> playerScores =
        scoresLine?.split(' ').map((e) => int.tryParse(e) ?? 0).toList() ?? [];
    stdout.write("INPUT your play amount: ");
    int playingCount = int.tryParse(stdin.readLineSync() ?? '') ?? 0;
    stdout.write("INPUT List of your Scores (space separated): ");
    String? gitScoreInput = stdin.readLineSync();
    List<int> gitScores =
        gitScoreInput?.split(' ').map((e) => int.tryParse(e) ?? 0).toList() ??
        [];
    stdout.write("OUTPUT: ");
    String result = Arcade.denseRank(
      gitScores,
      playingCount,
      players,
      playerScores,
    );
    stdout.write(result);
  } else {
    stdout.writeln("=== Sloane OEIS Program ===");
    stdout.write("INPUT: ");
    String? line = stdin.readLineSync();
    int input = int.tryParse(line ?? '') ?? 0;
    stdout.write("OUTPUT: ");
    stdout.writeln(Sloane.OEIS(input));
  }
}
