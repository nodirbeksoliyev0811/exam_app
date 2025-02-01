// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TestEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(String response, int index) setResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(String response, int index)? setResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(String response, int index)? setResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SetResponse value) setResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_SetResponse value)? setResponse,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SetResponse value)? setResponse,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestEventCopyWith<$Res> {
  factory $TestEventCopyWith(TestEvent value, $Res Function(TestEvent) then) =
      _$TestEventCopyWithImpl<$Res, TestEvent>;
}

/// @nodoc
class _$TestEventCopyWithImpl<$Res, $Val extends TestEvent>
    implements $TestEventCopyWith<$Res> {
  _$TestEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl();

  @override
  String toString() {
    return 'TestEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(String response, int index) setResponse,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(String response, int index)? setResponse,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(String response, int index)? setResponse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SetResponse value) setResponse,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_SetResponse value)? setResponse,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SetResponse value)? setResponse,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements TestEvent {
  const factory _Started() = _$StartedImpl;
}

/// @nodoc
abstract class _$$ChangePageImplCopyWith<$Res> {
  factory _$$ChangePageImplCopyWith(
          _$ChangePageImpl value, $Res Function(_$ChangePageImpl) then) =
      __$$ChangePageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$ChangePageImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$ChangePageImpl>
    implements _$$ChangePageImplCopyWith<$Res> {
  __$$ChangePageImplCopyWithImpl(
      _$ChangePageImpl _value, $Res Function(_$ChangePageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? index = null,
  }) {
    return _then(_$ChangePageImpl(
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ChangePageImpl implements _ChangePage {
  const _$ChangePageImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'TestEvent.changePage(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePageImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      __$$ChangePageImplCopyWithImpl<_$ChangePageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(String response, int index) setResponse,
  }) {
    return changePage(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(String response, int index)? setResponse,
  }) {
    return changePage?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(String response, int index)? setResponse,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SetResponse value) setResponse,
  }) {
    return changePage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_SetResponse value)? setResponse,
  }) {
    return changePage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SetResponse value)? setResponse,
    required TResult orElse(),
  }) {
    if (changePage != null) {
      return changePage(this);
    }
    return orElse();
  }
}

abstract class _ChangePage implements TestEvent {
  const factory _ChangePage(final int index) = _$ChangePageImpl;

  int get index;
  @JsonKey(ignore: true)
  _$$ChangePageImplCopyWith<_$ChangePageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetResponseImplCopyWith<$Res> {
  factory _$$SetResponseImplCopyWith(
          _$SetResponseImpl value, $Res Function(_$SetResponseImpl) then) =
      __$$SetResponseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String response, int index});
}

/// @nodoc
class __$$SetResponseImplCopyWithImpl<$Res>
    extends _$TestEventCopyWithImpl<$Res, _$SetResponseImpl>
    implements _$$SetResponseImplCopyWith<$Res> {
  __$$SetResponseImplCopyWithImpl(
      _$SetResponseImpl _value, $Res Function(_$SetResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? response = null,
    Object? index = null,
  }) {
    return _then(_$SetResponseImpl(
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$SetResponseImpl implements _SetResponse {
  const _$SetResponseImpl({required this.response, required this.index});

  @override
  final String response;
  @override
  final int index;

  @override
  String toString() {
    return 'TestEvent.setResponse(response: $response, index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetResponseImpl &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, response, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SetResponseImplCopyWith<_$SetResponseImpl> get copyWith =>
      __$$SetResponseImplCopyWithImpl<_$SetResponseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(int index) changePage,
    required TResult Function(String response, int index) setResponse,
  }) {
    return setResponse(response, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(int index)? changePage,
    TResult? Function(String response, int index)? setResponse,
  }) {
    return setResponse?.call(response, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(int index)? changePage,
    TResult Function(String response, int index)? setResponse,
    required TResult orElse(),
  }) {
    if (setResponse != null) {
      return setResponse(response, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_ChangePage value) changePage,
    required TResult Function(_SetResponse value) setResponse,
  }) {
    return setResponse(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_ChangePage value)? changePage,
    TResult? Function(_SetResponse value)? setResponse,
  }) {
    return setResponse?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_ChangePage value)? changePage,
    TResult Function(_SetResponse value)? setResponse,
    required TResult orElse(),
  }) {
    if (setResponse != null) {
      return setResponse(this);
    }
    return orElse();
  }
}

abstract class _SetResponse implements TestEvent {
  const factory _SetResponse(
      {required final String response,
      required final int index}) = _$SetResponseImpl;

  String get response;
  int get index;
  @JsonKey(ignore: true)
  _$$SetResponseImplCopyWith<_$SetResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TestState {
  int get currentIndex => throw _privateConstructorUsedError;
  bool? get isCorrect => throw _privateConstructorUsedError;
  List<QuestionData> get data => throw _privateConstructorUsedError;
  Map<int, String> get selectedAnswers => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex, bool? isCorrect,
            List<QuestionData> data, Map<int, String> selectedAnswers)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex, bool? isCorrect,
            List<QuestionData> data, Map<int, String> selectedAnswers)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex, bool? isCorrect, List<QuestionData> data,
            Map<int, String> selectedAnswers)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TestStateCopyWith<TestState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestStateCopyWith<$Res> {
  factory $TestStateCopyWith(TestState value, $Res Function(TestState) then) =
      _$TestStateCopyWithImpl<$Res, TestState>;
  @useResult
  $Res call(
      {int currentIndex,
      bool? isCorrect,
      List<QuestionData> data,
      Map<int, String> selectedAnswers});
}

/// @nodoc
class _$TestStateCopyWithImpl<$Res, $Val extends TestState>
    implements $TestStateCopyWith<$Res> {
  _$TestStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? isCorrect = freezed,
    Object? data = null,
    Object? selectedAnswers = null,
  }) {
    return _then(_value.copyWith(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<QuestionData>,
      selectedAnswers: null == selectedAnswers
          ? _value.selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $TestStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int currentIndex,
      bool? isCorrect,
      List<QuestionData> data,
      Map<int, String> selectedAnswers});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$TestStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentIndex = null,
    Object? isCorrect = freezed,
    Object? data = null,
    Object? selectedAnswers = null,
  }) {
    return _then(_$InitialImpl(
      currentIndex: null == currentIndex
          ? _value.currentIndex
          : currentIndex // ignore: cast_nullable_to_non_nullable
              as int,
      isCorrect: freezed == isCorrect
          ? _value.isCorrect
          : isCorrect // ignore: cast_nullable_to_non_nullable
              as bool?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<QuestionData>,
      selectedAnswers: null == selectedAnswers
          ? _value._selectedAnswers
          : selectedAnswers // ignore: cast_nullable_to_non_nullable
              as Map<int, String>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {required this.currentIndex,
      this.isCorrect,
      required final List<QuestionData> data,
      required final Map<int, String> selectedAnswers})
      : _data = data,
        _selectedAnswers = selectedAnswers;

  @override
  final int currentIndex;
  @override
  final bool? isCorrect;
  final List<QuestionData> _data;
  @override
  List<QuestionData> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  final Map<int, String> _selectedAnswers;
  @override
  Map<int, String> get selectedAnswers {
    if (_selectedAnswers is EqualUnmodifiableMapView) return _selectedAnswers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_selectedAnswers);
  }

  @override
  String toString() {
    return 'TestState.initial(currentIndex: $currentIndex, isCorrect: $isCorrect, data: $data, selectedAnswers: $selectedAnswers)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isCorrect, isCorrect) ||
                other.isCorrect == isCorrect) &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            const DeepCollectionEquality()
                .equals(other._selectedAnswers, _selectedAnswers));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      currentIndex,
      isCorrect,
      const DeepCollectionEquality().hash(_data),
      const DeepCollectionEquality().hash(_selectedAnswers));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentIndex, bool? isCorrect,
            List<QuestionData> data, Map<int, String> selectedAnswers)
        initial,
  }) {
    return initial(currentIndex, isCorrect, data, selectedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentIndex, bool? isCorrect,
            List<QuestionData> data, Map<int, String> selectedAnswers)?
        initial,
  }) {
    return initial?.call(currentIndex, isCorrect, data, selectedAnswers);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentIndex, bool? isCorrect, List<QuestionData> data,
            Map<int, String> selectedAnswers)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentIndex, isCorrect, data, selectedAnswers);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements TestState {
  const factory _Initial(
      {required final int currentIndex,
      final bool? isCorrect,
      required final List<QuestionData> data,
      required final Map<int, String> selectedAnswers}) = _$InitialImpl;

  @override
  int get currentIndex;
  @override
  bool? get isCorrect;
  @override
  List<QuestionData> get data;
  @override
  Map<int, String> get selectedAnswers;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
