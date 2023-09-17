// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'downloads_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DownloadsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImages value)? getDownloadsImages,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadsImages,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadsEventCopyWith<$Res> {
  factory $DownloadsEventCopyWith(
          DownloadsEvent value, $Res Function(DownloadsEvent) then) =
      _$DownloadsEventCopyWithImpl<$Res, DownloadsEvent>;
}

/// @nodoc
class _$DownloadsEventCopyWithImpl<$Res, $Val extends DownloadsEvent>
    implements $DownloadsEventCopyWith<$Res> {
  _$DownloadsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_GetDownloadImagesCopyWith<$Res> {
  factory _$$_GetDownloadImagesCopyWith(_$_GetDownloadImages value,
          $Res Function(_$_GetDownloadImages) then) =
      __$$_GetDownloadImagesCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetDownloadImagesCopyWithImpl<$Res>
    extends _$DownloadsEventCopyWithImpl<$Res, _$_GetDownloadImages>
    implements _$$_GetDownloadImagesCopyWith<$Res> {
  __$$_GetDownloadImagesCopyWithImpl(
      _$_GetDownloadImages _value, $Res Function(_$_GetDownloadImages) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_GetDownloadImages implements _GetDownloadImages {
  const _$_GetDownloadImages();

  @override
  String toString() {
    return 'DownloadsEvent.getDownloadsImages()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetDownloadImages);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getDownloadsImages,
  }) {
    return getDownloadsImages();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getDownloadsImages,
  }) {
    return getDownloadsImages?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDownloadImages value) getDownloadsImages,
  }) {
    return getDownloadsImages(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDownloadImages value)? getDownloadsImages,
  }) {
    return getDownloadsImages?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDownloadImages value)? getDownloadsImages,
    required TResult orElse(),
  }) {
    if (getDownloadsImages != null) {
      return getDownloadsImages(this);
    }
    return orElse();
  }
}

abstract class _GetDownloadImages implements DownloadsEvent {
  const factory _GetDownloadImages() = _$_GetDownloadImages;
}

/// @nodoc
mixin _$DownloadState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<Model> get downloads => throw _privateConstructorUsedError;
  Option<Either<MainFailure, List<Model>>> get downloadsfailureorsucces =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DownloadStateCopyWith<DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DownloadStateCopyWith<$Res> {
  factory $DownloadStateCopyWith(
          DownloadState value, $Res Function(DownloadState) then) =
      _$DownloadStateCopyWithImpl<$Res, DownloadState>;
  @useResult
  $Res call(
      {bool isLoading,
      List<Model> downloads,
      Option<Either<MainFailure, List<Model>>> downloadsfailureorsucces});
}

/// @nodoc
class _$DownloadStateCopyWithImpl<$Res, $Val extends DownloadState>
    implements $DownloadStateCopyWith<$Res> {
  _$DownloadStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsfailureorsucces = null,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value.downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Model>,
      downloadsfailureorsucces: null == downloadsfailureorsucces
          ? _value.downloadsfailureorsucces
          : downloadsfailureorsucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Model>>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DownloadStateCopyWith<$Res>
    implements $DownloadStateCopyWith<$Res> {
  factory _$$_DownloadStateCopyWith(
          _$_DownloadState value, $Res Function(_$_DownloadState) then) =
      __$$_DownloadStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      List<Model> downloads,
      Option<Either<MainFailure, List<Model>>> downloadsfailureorsucces});
}

/// @nodoc
class __$$_DownloadStateCopyWithImpl<$Res>
    extends _$DownloadStateCopyWithImpl<$Res, _$_DownloadState>
    implements _$$_DownloadStateCopyWith<$Res> {
  __$$_DownloadStateCopyWithImpl(
      _$_DownloadState _value, $Res Function(_$_DownloadState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? downloads = null,
    Object? downloadsfailureorsucces = null,
  }) {
    return _then(_$_DownloadState(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      downloads: null == downloads
          ? _value._downloads
          : downloads // ignore: cast_nullable_to_non_nullable
              as List<Model>,
      downloadsfailureorsucces: null == downloadsfailureorsucces
          ? _value.downloadsfailureorsucces
          : downloadsfailureorsucces // ignore: cast_nullable_to_non_nullable
              as Option<Either<MainFailure, List<Model>>>,
    ));
  }
}

/// @nodoc

class _$_DownloadState implements _DownloadState {
  const _$_DownloadState(
      {required this.isLoading,
      required final List<Model> downloads,
      required this.downloadsfailureorsucces})
      : _downloads = downloads;

  @override
  final bool isLoading;
  final List<Model> _downloads;
  @override
  List<Model> get downloads {
    if (_downloads is EqualUnmodifiableListView) return _downloads;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_downloads);
  }

  @override
  final Option<Either<MainFailure, List<Model>>> downloadsfailureorsucces;

  @override
  String toString() {
    return 'DownloadState(isLoading: $isLoading, downloads: $downloads, downloadsfailureorsucces: $downloadsfailureorsucces)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DownloadState &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            const DeepCollectionEquality()
                .equals(other._downloads, _downloads) &&
            (identical(
                    other.downloadsfailureorsucces, downloadsfailureorsucces) ||
                other.downloadsfailureorsucces == downloadsfailureorsucces));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      const DeepCollectionEquality().hash(_downloads),
      downloadsfailureorsucces);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      __$$_DownloadStateCopyWithImpl<_$_DownloadState>(this, _$identity);
}

abstract class _DownloadState implements DownloadState {
  const factory _DownloadState(
      {required final bool isLoading,
      required final List<Model> downloads,
      required final Option<Either<MainFailure, List<Model>>>
          downloadsfailureorsucces}) = _$_DownloadState;

  @override
  bool get isLoading;
  @override
  List<Model> get downloads;
  @override
  Option<Either<MainFailure, List<Model>>> get downloadsfailureorsucces;
  @override
  @JsonKey(ignore: true)
  _$$_DownloadStateCopyWith<_$_DownloadState> get copyWith =>
      throw _privateConstructorUsedError;
}
