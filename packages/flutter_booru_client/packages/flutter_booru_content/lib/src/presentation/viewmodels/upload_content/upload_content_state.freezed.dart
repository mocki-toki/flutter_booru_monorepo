// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'upload_content_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UploadContentState {
  ContentType get contentType => throw _privateConstructorUsedError;
  XFile? get file => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContentType contentType, XFile? file) edit,
    required TResult Function(ContentType contentType, XFile file) uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContentType contentType, XFile? file)? edit,
    TResult? Function(ContentType contentType, XFile file)? uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContentType contentType, XFile? file)? edit,
    TResult Function(ContentType contentType, XFile file)? uploading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadContentStateEdit value) edit,
    required TResult Function(UploadContentStateUploading value) uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadContentStateEdit value)? edit,
    TResult? Function(UploadContentStateUploading value)? uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadContentStateEdit value)? edit,
    TResult Function(UploadContentStateUploading value)? uploading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UploadContentStateCopyWith<UploadContentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UploadContentStateCopyWith<$Res> {
  factory $UploadContentStateCopyWith(
          UploadContentState value, $Res Function(UploadContentState) then) =
      _$UploadContentStateCopyWithImpl<$Res, UploadContentState>;
  @useResult
  $Res call({ContentType contentType, XFile file});
}

/// @nodoc
class _$UploadContentStateCopyWithImpl<$Res, $Val extends UploadContentState>
    implements $UploadContentStateCopyWith<$Res> {
  _$UploadContentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? file = null,
  }) {
    return _then(_value.copyWith(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      file: null == file
          ? _value.file!
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UploadContentStateEditCopyWith<$Res>
    implements $UploadContentStateCopyWith<$Res> {
  factory _$$UploadContentStateEditCopyWith(_$UploadContentStateEdit value,
          $Res Function(_$UploadContentStateEdit) then) =
      __$$UploadContentStateEditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContentType contentType, XFile? file});
}

/// @nodoc
class __$$UploadContentStateEditCopyWithImpl<$Res>
    extends _$UploadContentStateCopyWithImpl<$Res, _$UploadContentStateEdit>
    implements _$$UploadContentStateEditCopyWith<$Res> {
  __$$UploadContentStateEditCopyWithImpl(_$UploadContentStateEdit _value,
      $Res Function(_$UploadContentStateEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? file = freezed,
  }) {
    return _then(_$UploadContentStateEdit(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      file: freezed == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile?,
    ));
  }
}

/// @nodoc

class _$UploadContentStateEdit implements UploadContentStateEdit {
  const _$UploadContentStateEdit(
      {this.contentType = ContentType.image, this.file});

  @override
  @JsonKey()
  final ContentType contentType;
  @override
  final XFile? file;

  @override
  String toString() {
    return 'UploadContentState.edit(contentType: $contentType, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadContentStateEdit &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadContentStateEditCopyWith<_$UploadContentStateEdit> get copyWith =>
      __$$UploadContentStateEditCopyWithImpl<_$UploadContentStateEdit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContentType contentType, XFile? file) edit,
    required TResult Function(ContentType contentType, XFile file) uploading,
  }) {
    return edit(contentType, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContentType contentType, XFile? file)? edit,
    TResult? Function(ContentType contentType, XFile file)? uploading,
  }) {
    return edit?.call(contentType, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContentType contentType, XFile? file)? edit,
    TResult Function(ContentType contentType, XFile file)? uploading,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(contentType, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadContentStateEdit value) edit,
    required TResult Function(UploadContentStateUploading value) uploading,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadContentStateEdit value)? edit,
    TResult? Function(UploadContentStateUploading value)? uploading,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadContentStateEdit value)? edit,
    TResult Function(UploadContentStateUploading value)? uploading,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class UploadContentStateEdit implements UploadContentState {
  const factory UploadContentStateEdit(
      {final ContentType contentType,
      final XFile? file}) = _$UploadContentStateEdit;

  @override
  ContentType get contentType;
  @override
  XFile? get file;
  @override
  @JsonKey(ignore: true)
  _$$UploadContentStateEditCopyWith<_$UploadContentStateEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UploadContentStateUploadingCopyWith<$Res>
    implements $UploadContentStateCopyWith<$Res> {
  factory _$$UploadContentStateUploadingCopyWith(
          _$UploadContentStateUploading value,
          $Res Function(_$UploadContentStateUploading) then) =
      __$$UploadContentStateUploadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ContentType contentType, XFile file});
}

/// @nodoc
class __$$UploadContentStateUploadingCopyWithImpl<$Res>
    extends _$UploadContentStateCopyWithImpl<$Res,
        _$UploadContentStateUploading>
    implements _$$UploadContentStateUploadingCopyWith<$Res> {
  __$$UploadContentStateUploadingCopyWithImpl(
      _$UploadContentStateUploading _value,
      $Res Function(_$UploadContentStateUploading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contentType = null,
    Object? file = null,
  }) {
    return _then(_$UploadContentStateUploading(
      contentType: null == contentType
          ? _value.contentType
          : contentType // ignore: cast_nullable_to_non_nullable
              as ContentType,
      file: null == file
          ? _value.file
          : file // ignore: cast_nullable_to_non_nullable
              as XFile,
    ));
  }
}

/// @nodoc

class _$UploadContentStateUploading implements UploadContentStateUploading {
  const _$UploadContentStateUploading(
      {required this.contentType, required this.file});

  @override
  final ContentType contentType;
  @override
  final XFile file;

  @override
  String toString() {
    return 'UploadContentState.uploading(contentType: $contentType, file: $file)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UploadContentStateUploading &&
            (identical(other.contentType, contentType) ||
                other.contentType == contentType) &&
            (identical(other.file, file) || other.file == file));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contentType, file);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UploadContentStateUploadingCopyWith<_$UploadContentStateUploading>
      get copyWith => __$$UploadContentStateUploadingCopyWithImpl<
          _$UploadContentStateUploading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ContentType contentType, XFile? file) edit,
    required TResult Function(ContentType contentType, XFile file) uploading,
  }) {
    return uploading(contentType, file);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ContentType contentType, XFile? file)? edit,
    TResult? Function(ContentType contentType, XFile file)? uploading,
  }) {
    return uploading?.call(contentType, file);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ContentType contentType, XFile? file)? edit,
    TResult Function(ContentType contentType, XFile file)? uploading,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(contentType, file);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UploadContentStateEdit value) edit,
    required TResult Function(UploadContentStateUploading value) uploading,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(UploadContentStateEdit value)? edit,
    TResult? Function(UploadContentStateUploading value)? uploading,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UploadContentStateEdit value)? edit,
    TResult Function(UploadContentStateUploading value)? uploading,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class UploadContentStateUploading implements UploadContentState {
  const factory UploadContentStateUploading(
      {required final ContentType contentType,
      required final XFile file}) = _$UploadContentStateUploading;

  @override
  ContentType get contentType;
  @override
  XFile get file;
  @override
  @JsonKey(ignore: true)
  _$$UploadContentStateUploadingCopyWith<_$UploadContentStateUploading>
      get copyWith => throw _privateConstructorUsedError;
}
