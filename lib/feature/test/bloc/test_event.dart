part of 'test_bloc.dart';

@freezed
class TestEvent with _$TestEvent {
  const factory TestEvent.started() = _Started;

  const factory TestEvent.changePage(int index) = _ChangePage;

  const factory TestEvent.setResponse({required String response, required int index}) = _SetResponse;
}
