class Jokes {
  final String jokeContent;
  final String createdBy;

  Jokes({
    required this.jokeContent,
    required this.createdBy,
  });

  factory Jokes.fromJSON({required Map<String, dynamic> data}) {
    return Jokes(
      jokeContent: data['jokeContent'],
      createdBy: data['created_by'],
    );
  }
}
