// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'notification_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NotificationStateDataTearOff {
  const _$NotificationStateDataTearOff();

  DataNotification call({bool isLoading = false}) {
    return DataNotification(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $NotificationStateData = _$NotificationStateDataTearOff();

/// @nodoc
mixin _$NotificationStateData {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateDataCopyWith<NotificationStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateDataCopyWith<$Res> {
  factory $NotificationStateDataCopyWith(NotificationStateData value,
          $Res Function(NotificationStateData) then) =
      _$NotificationStateDataCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$NotificationStateDataCopyWithImpl<$Res>
    implements $NotificationStateDataCopyWith<$Res> {
  _$NotificationStateDataCopyWithImpl(this._value, this._then);

  final NotificationStateData _value;
  // ignore: unused_field
  final $Res Function(NotificationStateData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DataNotificationCopyWith<$Res>
    implements $NotificationStateDataCopyWith<$Res> {
  factory $DataNotificationCopyWith(
          DataNotification value, $Res Function(DataNotification) then) =
      _$DataNotificationCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class _$DataNotificationCopyWithImpl<$Res>
    extends _$NotificationStateDataCopyWithImpl<$Res>
    implements $DataNotificationCopyWith<$Res> {
  _$DataNotificationCopyWithImpl(
      DataNotification _value, $Res Function(DataNotification) _then)
      : super(_value, (v) => _then(v as DataNotification));

  @override
  DataNotification get _value => super._value as DataNotification;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(DataNotification(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataNotification implements DataNotification {
  const _$DataNotification({this.isLoading = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'NotificationStateData(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataNotification &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataNotificationCopyWith<DataNotification> get copyWith =>
      _$DataNotificationCopyWithImpl<DataNotification>(this, _$identity);
}

abstract class DataNotification implements NotificationStateData {
  const factory DataNotification({bool isLoading}) = _$DataNotification;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataNotificationCopyWith<DataNotification> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$NotificationStateTearOff {
  const _$NotificationStateTearOff();

  Initial initial(DataNotification data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataNotification data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataNotification data) {
    return Loading(
      data,
    );
  }

  Error error(DataNotification data) {
    return Error(
      data,
    );
  }
}

/// @nodoc
const $NotificationState = _$NotificationStateTearOff();

/// @nodoc
mixin _$NotificationState {
  DataNotification get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataNotification data) initial,
    required TResult Function(DataNotification data) loaded,
    required TResult Function(DataNotification data) loading,
    required TResult Function(DataNotification data) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataNotification data)? initial,
    TResult Function(DataNotification data)? loaded,
    TResult Function(DataNotification data)? loading,
    TResult Function(DataNotification data)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NotificationStateCopyWith<NotificationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotificationStateCopyWith<$Res> {
  factory $NotificationStateCopyWith(
          NotificationState value, $Res Function(NotificationState) then) =
      _$NotificationStateCopyWithImpl<$Res>;
  $Res call({DataNotification data});
}

/// @nodoc
class _$NotificationStateCopyWithImpl<$Res>
    implements $NotificationStateCopyWith<$Res> {
  _$NotificationStateCopyWithImpl(this._value, this._then);

  final NotificationState _value;
  // ignore: unused_field
  final $Res Function(NotificationState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataNotification,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataNotification data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements $InitialCopyWith<$Res> {
  _$InitialCopyWithImpl(Initial _value, $Res Function(Initial) _then)
      : super(_value, (v) => _then(v as Initial));

  @override
  Initial get _value => super._value as Initial;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Initial(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataNotification,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataNotification data;

  @override
  String toString() {
    return 'NotificationState.initial(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Initial &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $InitialCopyWith<Initial> get copyWith =>
      _$InitialCopyWithImpl<Initial>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataNotification data) initial,
    required TResult Function(DataNotification data) loaded,
    required TResult Function(DataNotification data) loading,
    required TResult Function(DataNotification data) error,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataNotification data)? initial,
    TResult Function(DataNotification data)? loaded,
    TResult Function(DataNotification data)? loading,
    TResult Function(DataNotification data)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements NotificationState {
  const factory Initial(DataNotification data) = _$Initial;

  @override
  DataNotification get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataNotification data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements $LoadedCopyWith<$Res> {
  _$LoadedCopyWithImpl(Loaded _value, $Res Function(Loaded) _then)
      : super(_value, (v) => _then(v as Loaded));

  @override
  Loaded get _value => super._value as Loaded;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Loaded(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataNotification,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataNotification data;

  @override
  String toString() {
    return 'NotificationState.loaded(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loaded &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadedCopyWith<Loaded> get copyWith =>
      _$LoadedCopyWithImpl<Loaded>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataNotification data) initial,
    required TResult Function(DataNotification data) loaded,
    required TResult Function(DataNotification data) loading,
    required TResult Function(DataNotification data) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataNotification data)? initial,
    TResult Function(DataNotification data)? loaded,
    TResult Function(DataNotification data)? loading,
    TResult Function(DataNotification data)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loaded != null) {
      return loaded(this);
    }
    return orElse();
  }
}

abstract class Loaded implements NotificationState {
  const factory Loaded(DataNotification data) = _$Loaded;

  @override
  DataNotification get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataNotification data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements $LoadingCopyWith<$Res> {
  _$LoadingCopyWithImpl(Loading _value, $Res Function(Loading) _then)
      : super(_value, (v) => _then(v as Loading));

  @override
  Loading get _value => super._value as Loading;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Loading(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataNotification,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataNotification data;

  @override
  String toString() {
    return 'NotificationState.loading(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Loading &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $LoadingCopyWith<Loading> get copyWith =>
      _$LoadingCopyWithImpl<Loading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataNotification data) initial,
    required TResult Function(DataNotification data) loaded,
    required TResult Function(DataNotification data) loading,
    required TResult Function(DataNotification data) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataNotification data)? initial,
    TResult Function(DataNotification data)? loaded,
    TResult Function(DataNotification data)? loading,
    TResult Function(DataNotification data)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class Loading implements NotificationState {
  const factory Loading(DataNotification data) = _$Loading;

  @override
  DataNotification get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res>
    implements $NotificationStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataNotification data});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$NotificationStateCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(Error(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataNotification,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.data);

  @override
  final DataNotification data;

  @override
  String toString() {
    return 'NotificationState.error(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(data);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataNotification data) initial,
    required TResult Function(DataNotification data) loaded,
    required TResult Function(DataNotification data) loading,
    required TResult Function(DataNotification data) error,
  }) {
    return error(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataNotification data)? initial,
    TResult Function(DataNotification data)? loaded,
    TResult Function(DataNotification data)? loading,
    TResult Function(DataNotification data)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class Error implements NotificationState {
  const factory Error(DataNotification data) = _$Error;

  @override
  DataNotification get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
