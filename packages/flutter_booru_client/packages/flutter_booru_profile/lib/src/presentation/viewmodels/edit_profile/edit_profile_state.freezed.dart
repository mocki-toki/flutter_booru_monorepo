// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'edit_profile_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EditProfileState {
  TextEditingController get usernameController =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController usernameController) edit,
    required TResult Function(TextEditingController usernameController)
        uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextEditingController usernameController)? edit,
    TResult? Function(TextEditingController usernameController)? uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController usernameController)? edit,
    TResult Function(TextEditingController usernameController)? uploading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileStateEdit value) edit,
    required TResult Function(EditProfileStateUploading value) uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateEdit value)? edit,
    TResult? Function(EditProfileStateUploading value)? uploading,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateEdit value)? edit,
    TResult Function(EditProfileStateUploading value)? uploading,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EditProfileStateCopyWith<EditProfileState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditProfileStateCopyWith<$Res> {
  factory $EditProfileStateCopyWith(
          EditProfileState value, $Res Function(EditProfileState) then) =
      _$EditProfileStateCopyWithImpl<$Res, EditProfileState>;
  @useResult
  $Res call({TextEditingController usernameController});
}

/// @nodoc
class _$EditProfileStateCopyWithImpl<$Res, $Val extends EditProfileState>
    implements $EditProfileStateCopyWith<$Res> {
  _$EditProfileStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameController = null,
  }) {
    return _then(_value.copyWith(
      usernameController: null == usernameController
          ? _value.usernameController
          : usernameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditProfileStateEditCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateEditCopyWith(_$EditProfileStateEdit value,
          $Res Function(_$EditProfileStateEdit) then) =
      __$$EditProfileStateEditCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController usernameController});
}

/// @nodoc
class __$$EditProfileStateEditCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateEdit>
    implements _$$EditProfileStateEditCopyWith<$Res> {
  __$$EditProfileStateEditCopyWithImpl(_$EditProfileStateEdit _value,
      $Res Function(_$EditProfileStateEdit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameController = null,
  }) {
    return _then(_$EditProfileStateEdit(
      usernameController: null == usernameController
          ? _value.usernameController
          : usernameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$EditProfileStateEdit implements EditProfileStateEdit {
  const _$EditProfileStateEdit({required this.usernameController});

  @override
  final TextEditingController usernameController;

  @override
  String toString() {
    return 'EditProfileState.edit(usernameController: $usernameController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateEdit &&
            (identical(other.usernameController, usernameController) ||
                other.usernameController == usernameController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateEditCopyWith<_$EditProfileStateEdit> get copyWith =>
      __$$EditProfileStateEditCopyWithImpl<_$EditProfileStateEdit>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController usernameController) edit,
    required TResult Function(TextEditingController usernameController)
        uploading,
  }) {
    return edit(usernameController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextEditingController usernameController)? edit,
    TResult? Function(TextEditingController usernameController)? uploading,
  }) {
    return edit?.call(usernameController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController usernameController)? edit,
    TResult Function(TextEditingController usernameController)? uploading,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(usernameController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileStateEdit value) edit,
    required TResult Function(EditProfileStateUploading value) uploading,
  }) {
    return edit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateEdit value)? edit,
    TResult? Function(EditProfileStateUploading value)? uploading,
  }) {
    return edit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateEdit value)? edit,
    TResult Function(EditProfileStateUploading value)? uploading,
    required TResult orElse(),
  }) {
    if (edit != null) {
      return edit(this);
    }
    return orElse();
  }
}

abstract class EditProfileStateEdit implements EditProfileState {
  const factory EditProfileStateEdit(
          {required final TextEditingController usernameController}) =
      _$EditProfileStateEdit;

  @override
  TextEditingController get usernameController;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileStateEditCopyWith<_$EditProfileStateEdit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$EditProfileStateUploadingCopyWith<$Res>
    implements $EditProfileStateCopyWith<$Res> {
  factory _$$EditProfileStateUploadingCopyWith(
          _$EditProfileStateUploading value,
          $Res Function(_$EditProfileStateUploading) then) =
      __$$EditProfileStateUploadingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TextEditingController usernameController});
}

/// @nodoc
class __$$EditProfileStateUploadingCopyWithImpl<$Res>
    extends _$EditProfileStateCopyWithImpl<$Res, _$EditProfileStateUploading>
    implements _$$EditProfileStateUploadingCopyWith<$Res> {
  __$$EditProfileStateUploadingCopyWithImpl(_$EditProfileStateUploading _value,
      $Res Function(_$EditProfileStateUploading) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? usernameController = null,
  }) {
    return _then(_$EditProfileStateUploading(
      usernameController: null == usernameController
          ? _value.usernameController
          : usernameController // ignore: cast_nullable_to_non_nullable
              as TextEditingController,
    ));
  }
}

/// @nodoc

class _$EditProfileStateUploading implements EditProfileStateUploading {
  const _$EditProfileStateUploading({required this.usernameController});

  @override
  final TextEditingController usernameController;

  @override
  String toString() {
    return 'EditProfileState.uploading(usernameController: $usernameController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditProfileStateUploading &&
            (identical(other.usernameController, usernameController) ||
                other.usernameController == usernameController));
  }

  @override
  int get hashCode => Object.hash(runtimeType, usernameController);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditProfileStateUploadingCopyWith<_$EditProfileStateUploading>
      get copyWith => __$$EditProfileStateUploadingCopyWithImpl<
          _$EditProfileStateUploading>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TextEditingController usernameController) edit,
    required TResult Function(TextEditingController usernameController)
        uploading,
  }) {
    return uploading(usernameController);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TextEditingController usernameController)? edit,
    TResult? Function(TextEditingController usernameController)? uploading,
  }) {
    return uploading?.call(usernameController);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TextEditingController usernameController)? edit,
    TResult Function(TextEditingController usernameController)? uploading,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(usernameController);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(EditProfileStateEdit value) edit,
    required TResult Function(EditProfileStateUploading value) uploading,
  }) {
    return uploading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(EditProfileStateEdit value)? edit,
    TResult? Function(EditProfileStateUploading value)? uploading,
  }) {
    return uploading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(EditProfileStateEdit value)? edit,
    TResult Function(EditProfileStateUploading value)? uploading,
    required TResult orElse(),
  }) {
    if (uploading != null) {
      return uploading(this);
    }
    return orElse();
  }
}

abstract class EditProfileStateUploading implements EditProfileState {
  const factory EditProfileStateUploading(
          {required final TextEditingController usernameController}) =
      _$EditProfileStateUploading;

  @override
  TextEditingController get usernameController;
  @override
  @JsonKey(ignore: true)
  _$$EditProfileStateUploadingCopyWith<_$EditProfileStateUploading>
      get copyWith => throw _privateConstructorUsedError;
}
