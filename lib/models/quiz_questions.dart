class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getShuffledAnswers() {
    //copies a list
    final shuffledList = List.of(answers);
    shuffledList.shuffle();
    return shuffledList;
  }
}
