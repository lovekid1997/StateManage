// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'socket_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$SocketEventTearOff {
  const _$SocketEventTearOff();

  Started started() {
    return const Started();
  }

  AddMessage addMessage({required String message}) {
    return AddMessage(
      message: message,
    );
  }
}

/// @nodoc
const $SocketEvent = _$SocketEventTearOff();

/// @nodoc
mixin _$SocketEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message) addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message)? addMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddMessage value) addMessage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddMessage value)? addMessage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketEventCopyWith<$Res> {
  factory $SocketEventCopyWith(
          SocketEvent value, $Res Function(SocketEvent) then) =
      _$SocketEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SocketEventCopyWithImpl<$Res> implements $SocketEventCopyWith<$Res> {
  _$SocketEventCopyWithImpl(this._value, this._then);

  final SocketEvent _value;
  // ignore: unused_field
  final $Res Function(SocketEvent) _then;
}

/// @nodoc
abstract class $StartedCopyWith<$Res> {
  factory $StartedCopyWith(Started value, $Res Function(Started) then) =
      _$StartedCopyWithImpl<$Res>;
}

/// @nodoc
class _$StartedCopyWithImpl<$Res> extends _$SocketEventCopyWithImpl<$Res>
    implements $StartedCopyWith<$Res> {
  _$StartedCopyWithImpl(Started _value, $Res Function(Started) _then)
      : super(_value, (v) => _then(v as Started));

  @override
  Started get _value => super._value as Started;
}

/// @nodoc

class _$Started implements Started {
  const _$Started();

  @override
  String toString() {
    return 'SocketEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message) addMessage,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message)? addMessage,
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
    required TResult Function(Started value) started,
    required TResult Function(AddMessage value) addMessage,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddMessage value)? addMessage,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class Started implements SocketEvent {
  const factory Started() = _$Started;
}

/// @nodoc
abstract class $AddMessageCopyWith<$Res> {
  factory $AddMessageCopyWith(
          AddMessage value, $Res Function(AddMessage) then) =
      _$AddMessageCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class _$AddMessageCopyWithImpl<$Res> extends _$SocketEventCopyWithImpl<$Res>
    implements $AddMessageCopyWith<$Res> {
  _$AddMessageCopyWithImpl(AddMessage _value, $Res Function(AddMessage) _then)
      : super(_value, (v) => _then(v as AddMessage));

  @override
  AddMessage get _value => super._value as AddMessage;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(AddMessage(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$AddMessage implements AddMessage {
  const _$AddMessage({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'SocketEvent.addMessage(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AddMessage &&
            (identical(other.message, message) ||
                const DeepCollectionEquality().equals(other.message, message)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(message);

  @JsonKey(ignore: true)
  @override
  $AddMessageCopyWith<AddMessage> get copyWith =>
      _$AddMessageCopyWithImpl<AddMessage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String message) addMessage,
  }) {
    return addMessage(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String message)? addMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Started value) started,
    required TResult Function(AddMessage value) addMessage,
  }) {
    return addMessage(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Started value)? started,
    TResult Function(AddMessage value)? addMessage,
    required TResult orElse(),
  }) {
    if (addMessage != null) {
      return addMessage(this);
    }
    return orElse();
  }
}

abstract class AddMessage implements SocketEvent {
  const factory AddMessage({required String message}) = _$AddMessage;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddMessageCopyWith<AddMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SocketDataTearOff {
  const _$SocketDataTearOff();

  DataSocket call({bool isLoading = false}) {
    return DataSocket(
      isLoading: isLoading,
    );
  }
}

/// @nodoc
const $SocketData = _$SocketDataTearOff();

/// @nodoc
mixin _$SocketData {
  bool get isLoading => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocketDataCopyWith<SocketData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketDataCopyWith<$Res> {
  factory $SocketDataCopyWith(
          SocketData value, $Res Function(SocketData) then) =
      _$SocketDataCopyWithImpl<$Res>;
  $Res call({bool isLoading});
}

/// @nodoc
class _$SocketDataCopyWithImpl<$Res> implements $SocketDataCopyWith<$Res> {
  _$SocketDataCopyWithImpl(this._value, this._then);

  final SocketData _value;
  // ignore: unused_field
  final $Res Function(SocketData) _then;

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
abstract class $DataSocketCopyWith<$Res> implements $SocketDataCopyWith<$Res> {
  factory $DataSocketCopyWith(
          DataSocket value, $Res Function(DataSocket) then) =
      _$DataSocketCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading});
}

/// @nodoc
class _$DataSocketCopyWithImpl<$Res> extends _$SocketDataCopyWithImpl<$Res>
    implements $DataSocketCopyWith<$Res> {
  _$DataSocketCopyWithImpl(DataSocket _value, $Res Function(DataSocket) _then)
      : super(_value, (v) => _then(v as DataSocket));

  @override
  DataSocket get _value => super._value as DataSocket;

  @override
  $Res call({
    Object? isLoading = freezed,
  }) {
    return _then(DataSocket(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataSocket implements DataSocket {
  const _$DataSocket({this.isLoading = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;

  @override
  String toString() {
    return 'SocketData(isLoading: $isLoading)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataSocket &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(isLoading);

  @JsonKey(ignore: true)
  @override
  $DataSocketCopyWith<DataSocket> get copyWith =>
      _$DataSocketCopyWithImpl<DataSocket>(this, _$identity);
}

abstract class DataSocket implements SocketData {
  const factory DataSocket({bool isLoading}) = _$DataSocket;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataSocketCopyWith<DataSocket> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$SocketStateTearOff {
  const _$SocketStateTearOff();

  Initial initial(SocketData data) {
    return Initial(
      data,
    );
  }
}

/// @nodoc
const $SocketState = _$SocketStateTearOff();

/// @nodoc
mixin _$SocketState {
  SocketData get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(SocketData data) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketData data)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SocketStateCopyWith<SocketState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketStateCopyWith<$Res> {
  factory $SocketStateCopyWith(
          SocketState value, $Res Function(SocketState) then) =
      _$SocketStateCopyWithImpl<$Res>;
  $Res call({SocketData data});

  $SocketDataCopyWith<$Res> get data;
}

/// @nodoc
class _$SocketStateCopyWithImpl<$Res> implements $SocketStateCopyWith<$Res> {
  _$SocketStateCopyWithImpl(this._value, this._then);

  final SocketState _value;
  // ignore: unused_field
  final $Res Function(SocketState) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as SocketData,
    ));
  }

  @override
  $SocketDataCopyWith<$Res> get data {
    return $SocketDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res> implements $SocketStateCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({SocketData data});

  @override
  $SocketDataCopyWith<$Res> get data;
}

/// @nodoc
class _$InitialCopyWithImpl<$Res> extends _$SocketStateCopyWithImpl<$Res>
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
              as SocketData,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final SocketData data;

  @override
  String toString() {
    return 'SocketState.initial(data: $data)';
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
    required TResult Function(SocketData data) initial,
  }) {
    return initial(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(SocketData data)? initial,
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
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class Initial implements SocketState {
  const factory Initial(SocketData data) = _$Initial;

  @override
  SocketData get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}
