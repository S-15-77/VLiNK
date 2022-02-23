class Questions {
  final String id; //Question_ID
  final String mainTitle;
  final String title; //Title of the question
  final Map<String, bool>? options; //options for each ques

  Questions(
      {required this.mainTitle,
      required this.id,
      required this.title,
      this.options});

  @override
  String toString() {
    return 'Question(id: $id,mainTitle: $mainTitle, title: $title, options: $options)';
  }
}
