class Questions{

  const Questions(this.questionText,this.answers);

  final String questionText;
  final List<String> answers;

  List<String> getshuffleList(){
    List<String> shuflledList = List.of(answers);
    shuflledList.shuffle();
    return shuflledList;
  }
}