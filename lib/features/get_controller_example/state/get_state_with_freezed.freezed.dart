// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'get_state_with_freezed.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$GetStateFreezedDataTearOff {
  const _$GetStateFreezedDataTearOff();

  DataGetFreezed call(
      {bool isLoading = false,
      List<DataUser>? listUser,
      bool isLoadMore = false}) {
    return DataGetFreezed(
      isLoading: isLoading,
      listUser: listUser,
      isLoadMore: isLoadMore,
    );
  }
}

/// @nodoc
const $GetStateFreezedData = _$GetStateFreezedDataTearOff();

/// @nodoc
mixin _$GetStateFreezedData {
  bool get isLoading => throw _privateConstructorUsedError;
  List<DataUser>? get listUser => throw _privateConstructorUsedError;
  bool get isLoadMore => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetStateFreezedDataCopyWith<GetStateFreezedData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStateFreezedDataCopyWith<$Res> {
  factory $GetStateFreezedDataCopyWith(
          GetStateFreezedData value, $Res Function(GetStateFreezedData) then) =
      _$GetStateFreezedDataCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<DataUser>? listUser, bool isLoadMore});
}

/// @nodoc
class _$GetStateFreezedDataCopyWithImpl<$Res>
    implements $GetStateFreezedDataCopyWith<$Res> {
  _$GetStateFreezedDataCopyWithImpl(this._value, this._then);

  final GetStateFreezedData _value;
  // ignore: unused_field
  final $Res Function(GetStateFreezedData) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listUser = freezed,
    Object? isLoadMore = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listUser: listUser == freezed
          ? _value.listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<DataUser>?,
      isLoadMore: isLoadMore == freezed
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $DataGetFreezedCopyWith<$Res>
    implements $GetStateFreezedDataCopyWith<$Res> {
  factory $DataGetFreezedCopyWith(
          DataGetFreezed value, $Res Function(DataGetFreezed) then) =
      _$DataGetFreezedCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<DataUser>? listUser, bool isLoadMore});
}

/// @nodoc
class _$DataGetFreezedCopyWithImpl<$Res>
    extends _$GetStateFreezedDataCopyWithImpl<$Res>
    implements $DataGetFreezedCopyWith<$Res> {
  _$DataGetFreezedCopyWithImpl(
      DataGetFreezed _value, $Res Function(DataGetFreezed) _then)
      : super(_value, (v) => _then(v as DataGetFreezed));

  @override
  DataGetFreezed get _value => super._value as DataGetFreezed;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? listUser = freezed,
    Object? isLoadMore = freezed,
  }) {
    return _then(DataGetFreezed(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      listUser: listUser == freezed
          ? _value.listUser
          : listUser // ignore: cast_nullable_to_non_nullable
              as List<DataUser>?,
      isLoadMore: isLoadMore == freezed
          ? _value.isLoadMore
          : isLoadMore // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$DataGetFreezed implements DataGetFreezed {
  const _$DataGetFreezed(
      {this.isLoading = false, this.listUser, this.isLoadMore = false});

  @JsonKey(defaultValue: false)
  @override
  final bool isLoading;
  @override
  final List<DataUser>? listUser;
  @JsonKey(defaultValue: false)
  @override
  final bool isLoadMore;

  @override
  String toString() {
    return 'GetStateFreezedData(isLoading: $isLoading, listUser: $listUser, isLoadMore: $isLoadMore)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is DataGetFreezed &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.listUser, listUser) ||
                const DeepCollectionEquality()
                    .equals(other.listUser, listUser)) &&
            (identical(other.isLoadMore, isLoadMore) ||
                const DeepCollectionEquality()
                    .equals(other.isLoadMore, isLoadMore)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(listUser) ^
      const DeepCollectionEquality().hash(isLoadMore);

  @JsonKey(ignore: true)
  @override
  $DataGetFreezedCopyWith<DataGetFreezed> get copyWith =>
      _$DataGetFreezedCopyWithImpl<DataGetFreezed>(this, _$identity);
}

abstract class DataGetFreezed implements GetStateFreezedData {
  const factory DataGetFreezed(
      {bool isLoading,
      List<DataUser>? listUser,
      bool isLoadMore}) = _$DataGetFreezed;

  @override
  bool get isLoading => throw _privateConstructorUsedError;
  @override
  List<DataUser>? get listUser => throw _privateConstructorUsedError;
  @override
  bool get isLoadMore => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $DataGetFreezedCopyWith<DataGetFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$GetStateWithFreezedTearOff {
  const _$GetStateWithFreezedTearOff();

  Initial init(DataGetFreezed data) {
    return Initial(
      data,
    );
  }

  Loaded loaded(DataGetFreezed data) {
    return Loaded(
      data,
    );
  }

  Loading loading(DataGetFreezed data) {
    return Loading(
      data,
    );
  }

  Error error(DataGetFreezed data, [String? error]) {
    return Error(
      data,
      error,
    );
  }
}

/// @nodoc
const $GetStateWithFreezed = _$GetStateWithFreezedTearOff();

/// @nodoc
mixin _$GetStateWithFreezed {
  DataGetFreezed get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataGetFreezed data) init,
    required TResult Function(DataGetFreezed data) loaded,
    required TResult Function(DataGetFreezed data) loading,
    required TResult Function(DataGetFreezed data, String? error) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataGetFreezed data)? init,
    TResult Function(DataGetFreezed data)? loaded,
    TResult Function(DataGetFreezed data)? loading,
    TResult Function(DataGetFreezed data, String? error)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetStateWithFreezedCopyWith<GetStateWithFreezed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStateWithFreezedCopyWith<$Res> {
  factory $GetStateWithFreezedCopyWith(
          GetStateWithFreezed value, $Res Function(GetStateWithFreezed) then) =
      _$GetStateWithFreezedCopyWithImpl<$Res>;
  $Res call({DataGetFreezed data});
}

/// @nodoc
class _$GetStateWithFreezedCopyWithImpl<$Res>
    implements $GetStateWithFreezedCopyWith<$Res> {
  _$GetStateWithFreezedCopyWithImpl(this._value, this._then);

  final GetStateWithFreezed _value;
  // ignore: unused_field
  final $Res Function(GetStateWithFreezed) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataGetFreezed,
    ));
  }
}

/// @nodoc
abstract class $InitialCopyWith<$Res>
    implements $GetStateWithFreezedCopyWith<$Res> {
  factory $InitialCopyWith(Initial value, $Res Function(Initial) then) =
      _$InitialCopyWithImpl<$Res>;
  @override
  $Res call({DataGetFreezed data});
}

/// @nodoc
class _$InitialCopyWithImpl<$Res>
    extends _$GetStateWithFreezedCopyWithImpl<$Res>
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
              as DataGetFreezed,
    ));
  }
}

/// @nodoc

class _$Initial implements Initial {
  const _$Initial(this.data);

  @override
  final DataGetFreezed data;

  @override
  String toString() {
    return 'GetStateWithFreezed.init(data: $data)';
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
    required TResult Function(DataGetFreezed data) init,
    required TResult Function(DataGetFreezed data) loaded,
    required TResult Function(DataGetFreezed data) loading,
    required TResult Function(DataGetFreezed data, String? error) error,
  }) {
    return init(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataGetFreezed data)? init,
    TResult Function(DataGetFreezed data)? loaded,
    TResult Function(DataGetFreezed data)? loading,
    TResult Function(DataGetFreezed data, String? error)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
    TResult Function(Loaded value)? loaded,
    TResult Function(Loading value)? loading,
    TResult Function(Error value)? error,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class Initial implements GetStateWithFreezed {
  const factory Initial(DataGetFreezed data) = _$Initial;

  @override
  DataGetFreezed get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $InitialCopyWith<Initial> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadedCopyWith<$Res>
    implements $GetStateWithFreezedCopyWith<$Res> {
  factory $LoadedCopyWith(Loaded value, $Res Function(Loaded) then) =
      _$LoadedCopyWithImpl<$Res>;
  @override
  $Res call({DataGetFreezed data});
}

/// @nodoc
class _$LoadedCopyWithImpl<$Res> extends _$GetStateWithFreezedCopyWithImpl<$Res>
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
              as DataGetFreezed,
    ));
  }
}

/// @nodoc

class _$Loaded implements Loaded {
  const _$Loaded(this.data);

  @override
  final DataGetFreezed data;

  @override
  String toString() {
    return 'GetStateWithFreezed.loaded(data: $data)';
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
    required TResult Function(DataGetFreezed data) init,
    required TResult Function(DataGetFreezed data) loaded,
    required TResult Function(DataGetFreezed data) loading,
    required TResult Function(DataGetFreezed data, String? error) error,
  }) {
    return loaded(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataGetFreezed data)? init,
    TResult Function(DataGetFreezed data)? loaded,
    TResult Function(DataGetFreezed data)? loading,
    TResult Function(DataGetFreezed data, String? error)? error,
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
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loaded(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
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

abstract class Loaded implements GetStateWithFreezed {
  const factory Loaded(DataGetFreezed data) = _$Loaded;

  @override
  DataGetFreezed get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadedCopyWith<Loaded> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoadingCopyWith<$Res>
    implements $GetStateWithFreezedCopyWith<$Res> {
  factory $LoadingCopyWith(Loading value, $Res Function(Loading) then) =
      _$LoadingCopyWithImpl<$Res>;
  @override
  $Res call({DataGetFreezed data});
}

/// @nodoc
class _$LoadingCopyWithImpl<$Res>
    extends _$GetStateWithFreezedCopyWithImpl<$Res>
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
              as DataGetFreezed,
    ));
  }
}

/// @nodoc

class _$Loading implements Loading {
  const _$Loading(this.data);

  @override
  final DataGetFreezed data;

  @override
  String toString() {
    return 'GetStateWithFreezed.loading(data: $data)';
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
    required TResult Function(DataGetFreezed data) init,
    required TResult Function(DataGetFreezed data) loaded,
    required TResult Function(DataGetFreezed data) loading,
    required TResult Function(DataGetFreezed data, String? error) error,
  }) {
    return loading(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataGetFreezed data)? init,
    TResult Function(DataGetFreezed data)? loaded,
    TResult Function(DataGetFreezed data)? loading,
    TResult Function(DataGetFreezed data, String? error)? error,
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
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
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

abstract class Loading implements GetStateWithFreezed {
  const factory Loading(DataGetFreezed data) = _$Loading;

  @override
  DataGetFreezed get data => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LoadingCopyWith<Loading> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorCopyWith<$Res>
    implements $GetStateWithFreezedCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) then) =
      _$ErrorCopyWithImpl<$Res>;
  @override
  $Res call({DataGetFreezed data, String? error});
}

/// @nodoc
class _$ErrorCopyWithImpl<$Res> extends _$GetStateWithFreezedCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(Error _value, $Res Function(Error) _then)
      : super(_value, (v) => _then(v as Error));

  @override
  Error get _value => super._value as Error;

  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
  }) {
    return _then(Error(
      data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DataGetFreezed,
      error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$Error implements Error {
  const _$Error(this.data, [this.error]);

  @override
  final DataGetFreezed data;
  @override
  final String? error;

  @override
  String toString() {
    return 'GetStateWithFreezed.error(data: $data, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Error &&
            (identical(other.data, data) ||
                const DeepCollectionEquality().equals(other.data, data)) &&
            (identical(other.error, error) ||
                const DeepCollectionEquality().equals(other.error, error)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(data) ^
      const DeepCollectionEquality().hash(error);

  @JsonKey(ignore: true)
  @override
  $ErrorCopyWith<Error> get copyWith =>
      _$ErrorCopyWithImpl<Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DataGetFreezed data) init,
    required TResult Function(DataGetFreezed data) loaded,
    required TResult Function(DataGetFreezed data) loading,
    required TResult Function(DataGetFreezed data, String? error) error,
  }) {
    return error(data, this.error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DataGetFreezed data)? init,
    TResult Function(DataGetFreezed data)? loaded,
    TResult Function(DataGetFreezed data)? loading,
    TResult Function(DataGetFreezed data, String? error)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(data, this.error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Initial value) init,
    required TResult Function(Loaded value) loaded,
    required TResult Function(Loading value) loading,
    required TResult Function(Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Initial value)? init,
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

abstract class Error implements GetStateWithFreezed {
  const factory Error(DataGetFreezed data, [String? error]) = _$Error;

  @override
  DataGetFreezed get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ErrorCopyWith<Error> get copyWith => throw _privateConstructorUsedError;
}
