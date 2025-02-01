import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:exam_app/service/model/global/test_data/test_data.dart';
import 'package:exam_app/value/constants.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'test_event.dart';

part 'test_state.dart';

part 'test_bloc.freezed.dart';

class TestBloc extends Bloc<TestEvent, TestState> {
  final pageController = PageController(initialPage: 0);
  late List<QuestionData> _questions;
  final Map<int, String> _selectedAnswers = {};
  late Timer timer;
  String finishTime = '';
  int score = 0;

  TestBloc()
      : super(
          const TestState.initial(
            currentIndex: 0,
            data: [],
            selectedAnswers: {},
          ),
        ) {
    on<TestEvent>(
      (event, emit) {
        event.when(
          started: () {
            score = 0;
            emit(
              state.copyWith(
                currentIndex: 0,
                data: questions,
                isCorrect: null,
                selectedAnswers: {},
              ),
            );
            _selectedAnswers.clear();
          },
          changePage: (index) {
            pageController.animateToPage(index, duration: const Duration(milliseconds: 200), curve: Curves.linear);
            emit(state.copyWith(currentIndex: index));
          },
          setResponse: (response, index) {
            _questions = questions;
            _selectedAnswers[index] = response;
            emit(state.copyWith(selectedAnswers: _selectedAnswers, isCorrect: _questions[index].correctVariant == response));
            if (_questions[index].correctVariant == response) score++;
            if (state.selectedAnswers.length == _questions.length) timer.cancel();
            emit(state.copyWith(data: _questions, selectedAnswers: _selectedAnswers));
          },
        );
      },
    );
  }
}
