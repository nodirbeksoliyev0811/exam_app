class QuestionData {
  final String question, correctVariant;
  final List<Variant> variants;

  QuestionData({required this.question, required this.correctVariant, required this.variants});
}
class Variant {
  final String variant;
  final String response;

  Variant({required this.variant, required this.response});
}
