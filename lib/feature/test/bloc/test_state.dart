part of 'test_bloc.dart';

@freezed
class TestState with _$TestState {
  const factory TestState.initial({
    required int currentIndex,
    bool? isCorrect,
    required List<QuestionData> data,
    required Map<int, String> selectedAnswers,
  }) = _Initial;
}
