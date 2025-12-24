class Arcade {
  const Arcade();
  static String denseRank(
    List<int> inputScores,
    int playingCount,
    int players,
    List<int> playerScores,
  ) {
    List<int> filteredPlayerScores = [];
    List<int> inputScoresValidated = inputScores;

    for (int i = 0; i < players; i++) {
      try {
        filteredPlayerScores.add(playerScores[i]);
      } catch (e) {
        break;
      }
    }

    for (var i = 0; i < playingCount; i++) {
      try {
        inputScoresValidated.add(inputScores[i]);
      } catch (e) {
        break;
      }
    }

    List<int> scoresData = filteredPlayerScores.toSet().toList()
      ..sort((b, a) => a.compareTo(b));
    List<int> ranks = [];

    for (int i = 0; i < playingCount; i++) {
      int score = inputScoresValidated[i];
      for (int j = 0; j < scoresData.length; j++) {
        int newScore = 1;
        if (score == scoresData[j]) {
          newScore = j + 1;
          ranks.add(newScore);
          break;
        }
        if (score > scoresData[j]) {
          ranks.add(j + 1);
          break;
        }
        if (j == scoresData.length - 1) {
          ranks.add(scoresData.length + 1);
        }
      }
    }
    return ranks.join(' ').toString();
  }
}
