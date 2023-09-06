// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'bottom_bar_option_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BottomBarOptionModel {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)
        createNote,
    required TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)
        detailNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult? Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BottomBarOptions value) $default, {
    required TResult Function(BottomBarOptionCreateNote value) createNote,
    required TResult Function(BottomBarOptionDetailNote value) detailNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BottomBarOptions value)? $default, {
    TResult? Function(BottomBarOptionCreateNote value)? createNote,
    TResult? Function(BottomBarOptionDetailNote value)? detailNote,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BottomBarOptions value)? $default, {
    TResult Function(BottomBarOptionCreateNote value)? createNote,
    TResult Function(BottomBarOptionDetailNote value)? detailNote,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BottomBarOptionModelCopyWith<$Res> {
  factory $BottomBarOptionModelCopyWith(BottomBarOptionModel value,
          $Res Function(BottomBarOptionModel) then) =
      _$BottomBarOptionModelCopyWithImpl<$Res, BottomBarOptionModel>;
}

/// @nodoc
class _$BottomBarOptionModelCopyWithImpl<$Res,
        $Val extends BottomBarOptionModel>
    implements $BottomBarOptionModelCopyWith<$Res> {
  _$BottomBarOptionModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BottomBarOptionsCopyWith<$Res> {
  factory _$$_BottomBarOptionsCopyWith(
          _$_BottomBarOptions value, $Res Function(_$_BottomBarOptions) then) =
      __$$_BottomBarOptionsCopyWithImpl<$Res>;
  @useResult
  $Res call({String actionText});
}

/// @nodoc
class __$$_BottomBarOptionsCopyWithImpl<$Res>
    extends _$BottomBarOptionModelCopyWithImpl<$Res, _$_BottomBarOptions>
    implements _$$_BottomBarOptionsCopyWith<$Res> {
  __$$_BottomBarOptionsCopyWithImpl(
      _$_BottomBarOptions _value, $Res Function(_$_BottomBarOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionText = null,
  }) {
    return _then(_$_BottomBarOptions(
      actionText: null == actionText
          ? _value.actionText
          : actionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_BottomBarOptions implements _BottomBarOptions {
  _$_BottomBarOptions({required this.actionText});

  @override
  final String actionText;

  @override
  String toString() {
    return 'BottomBarOptionModel(actionText: $actionText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BottomBarOptions &&
            (identical(other.actionText, actionText) ||
                other.actionText == actionText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actionText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BottomBarOptionsCopyWith<_$_BottomBarOptions> get copyWith =>
      __$$_BottomBarOptionsCopyWithImpl<_$_BottomBarOptions>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)
        createNote,
    required TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)
        detailNote,
  }) {
    return $default(actionText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult? Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
  }) {
    return $default?.call(actionText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(actionText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BottomBarOptions value) $default, {
    required TResult Function(BottomBarOptionCreateNote value) createNote,
    required TResult Function(BottomBarOptionDetailNote value) detailNote,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BottomBarOptions value)? $default, {
    TResult? Function(BottomBarOptionCreateNote value)? createNote,
    TResult? Function(BottomBarOptionDetailNote value)? detailNote,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BottomBarOptions value)? $default, {
    TResult Function(BottomBarOptionCreateNote value)? createNote,
    TResult Function(BottomBarOptionDetailNote value)? detailNote,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BottomBarOptions implements BottomBarOptionModel {
  factory _BottomBarOptions({required final String actionText}) =
      _$_BottomBarOptions;

  String get actionText;
  @JsonKey(ignore: true)
  _$$_BottomBarOptionsCopyWith<_$_BottomBarOptions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BottomBarOptionCreateNoteCopyWith<$Res> {
  factory _$$BottomBarOptionCreateNoteCopyWith(
          _$BottomBarOptionCreateNote value,
          $Res Function(_$BottomBarOptionCreateNote) then) =
      __$$BottomBarOptionCreateNoteCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {VoidCallback onTapIconMore,
      dynamic Function(bool) onTapPinned,
      bool statePinned});
}

/// @nodoc
class __$$BottomBarOptionCreateNoteCopyWithImpl<$Res>
    extends _$BottomBarOptionModelCopyWithImpl<$Res,
        _$BottomBarOptionCreateNote>
    implements _$$BottomBarOptionCreateNoteCopyWith<$Res> {
  __$$BottomBarOptionCreateNoteCopyWithImpl(_$BottomBarOptionCreateNote _value,
      $Res Function(_$BottomBarOptionCreateNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onTapIconMore = null,
    Object? onTapPinned = null,
    Object? statePinned = null,
  }) {
    return _then(_$BottomBarOptionCreateNote(
      onTapIconMore: null == onTapIconMore
          ? _value.onTapIconMore
          : onTapIconMore // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onTapPinned: null == onTapPinned
          ? _value.onTapPinned
          : onTapPinned // ignore: cast_nullable_to_non_nullable
              as dynamic Function(bool),
      statePinned: null == statePinned
          ? _value.statePinned
          : statePinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BottomBarOptionCreateNote implements BottomBarOptionCreateNote {
  _$BottomBarOptionCreateNote(
      {required this.onTapIconMore,
      required this.onTapPinned,
      required this.statePinned});

  @override
  final VoidCallback onTapIconMore;
  @override
  final dynamic Function(bool) onTapPinned;
  @override
  final bool statePinned;

  @override
  String toString() {
    return 'BottomBarOptionModel.createNote(onTapIconMore: $onTapIconMore, onTapPinned: $onTapPinned, statePinned: $statePinned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomBarOptionCreateNote &&
            (identical(other.onTapIconMore, onTapIconMore) ||
                other.onTapIconMore == onTapIconMore) &&
            (identical(other.onTapPinned, onTapPinned) ||
                other.onTapPinned == onTapPinned) &&
            (identical(other.statePinned, statePinned) ||
                other.statePinned == statePinned));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, onTapIconMore, onTapPinned, statePinned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomBarOptionCreateNoteCopyWith<_$BottomBarOptionCreateNote>
      get copyWith => __$$BottomBarOptionCreateNoteCopyWithImpl<
          _$BottomBarOptionCreateNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)
        createNote,
    required TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)
        detailNote,
  }) {
    return createNote(onTapIconMore, onTapPinned, statePinned);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult? Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
  }) {
    return createNote?.call(onTapIconMore, onTapPinned, statePinned);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
    required TResult orElse(),
  }) {
    if (createNote != null) {
      return createNote(onTapIconMore, onTapPinned, statePinned);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BottomBarOptions value) $default, {
    required TResult Function(BottomBarOptionCreateNote value) createNote,
    required TResult Function(BottomBarOptionDetailNote value) detailNote,
  }) {
    return createNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BottomBarOptions value)? $default, {
    TResult? Function(BottomBarOptionCreateNote value)? createNote,
    TResult? Function(BottomBarOptionDetailNote value)? detailNote,
  }) {
    return createNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BottomBarOptions value)? $default, {
    TResult Function(BottomBarOptionCreateNote value)? createNote,
    TResult Function(BottomBarOptionDetailNote value)? detailNote,
    required TResult orElse(),
  }) {
    if (createNote != null) {
      return createNote(this);
    }
    return orElse();
  }
}

abstract class BottomBarOptionCreateNote implements BottomBarOptionModel {
  factory BottomBarOptionCreateNote(
      {required final VoidCallback onTapIconMore,
      required final dynamic Function(bool) onTapPinned,
      required final bool statePinned}) = _$BottomBarOptionCreateNote;

  VoidCallback get onTapIconMore;
  dynamic Function(bool) get onTapPinned;
  bool get statePinned;
  @JsonKey(ignore: true)
  _$$BottomBarOptionCreateNoteCopyWith<_$BottomBarOptionCreateNote>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$BottomBarOptionDetailNoteCopyWith<$Res> {
  factory _$$BottomBarOptionDetailNoteCopyWith(
          _$BottomBarOptionDetailNote value,
          $Res Function(_$BottomBarOptionDetailNote) then) =
      __$$BottomBarOptionDetailNoteCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {VoidCallback onTapIconMore,
      dynamic Function(bool) onTapPinned,
      VoidCallback onTapSearch,
      String leftText,
      bool statePinned});
}

/// @nodoc
class __$$BottomBarOptionDetailNoteCopyWithImpl<$Res>
    extends _$BottomBarOptionModelCopyWithImpl<$Res,
        _$BottomBarOptionDetailNote>
    implements _$$BottomBarOptionDetailNoteCopyWith<$Res> {
  __$$BottomBarOptionDetailNoteCopyWithImpl(_$BottomBarOptionDetailNote _value,
      $Res Function(_$BottomBarOptionDetailNote) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onTapIconMore = null,
    Object? onTapPinned = null,
    Object? onTapSearch = null,
    Object? leftText = null,
    Object? statePinned = null,
  }) {
    return _then(_$BottomBarOptionDetailNote(
      onTapIconMore: null == onTapIconMore
          ? _value.onTapIconMore
          : onTapIconMore // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      onTapPinned: null == onTapPinned
          ? _value.onTapPinned
          : onTapPinned // ignore: cast_nullable_to_non_nullable
              as dynamic Function(bool),
      onTapSearch: null == onTapSearch
          ? _value.onTapSearch
          : onTapSearch // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
      leftText: null == leftText
          ? _value.leftText
          : leftText // ignore: cast_nullable_to_non_nullable
              as String,
      statePinned: null == statePinned
          ? _value.statePinned
          : statePinned // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$BottomBarOptionDetailNote implements BottomBarOptionDetailNote {
  _$BottomBarOptionDetailNote(
      {required this.onTapIconMore,
      required this.onTapPinned,
      required this.onTapSearch,
      required this.leftText,
      required this.statePinned});

  @override
  final VoidCallback onTapIconMore;
  @override
  final dynamic Function(bool) onTapPinned;
  @override
  final VoidCallback onTapSearch;
  @override
  final String leftText;
  @override
  final bool statePinned;

  @override
  String toString() {
    return 'BottomBarOptionModel.detailNote(onTapIconMore: $onTapIconMore, onTapPinned: $onTapPinned, onTapSearch: $onTapSearch, leftText: $leftText, statePinned: $statePinned)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BottomBarOptionDetailNote &&
            (identical(other.onTapIconMore, onTapIconMore) ||
                other.onTapIconMore == onTapIconMore) &&
            (identical(other.onTapPinned, onTapPinned) ||
                other.onTapPinned == onTapPinned) &&
            (identical(other.onTapSearch, onTapSearch) ||
                other.onTapSearch == onTapSearch) &&
            (identical(other.leftText, leftText) ||
                other.leftText == leftText) &&
            (identical(other.statePinned, statePinned) ||
                other.statePinned == statePinned));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onTapIconMore, onTapPinned,
      onTapSearch, leftText, statePinned);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BottomBarOptionDetailNoteCopyWith<_$BottomBarOptionDetailNote>
      get copyWith => __$$BottomBarOptionDetailNoteCopyWithImpl<
          _$BottomBarOptionDetailNote>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)
        createNote,
    required TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)
        detailNote,
  }) {
    return detailNote(
        onTapIconMore, onTapPinned, onTapSearch, leftText, statePinned);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult? Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
  }) {
    return detailNote?.call(
        onTapIconMore, onTapPinned, onTapSearch, leftText, statePinned);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned, bool statePinned)?
        createNote,
    TResult Function(
            VoidCallback onTapIconMore,
            dynamic Function(bool) onTapPinned,
            VoidCallback onTapSearch,
            String leftText,
            bool statePinned)?
        detailNote,
    required TResult orElse(),
  }) {
    if (detailNote != null) {
      return detailNote(
          onTapIconMore, onTapPinned, onTapSearch, leftText, statePinned);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BottomBarOptions value) $default, {
    required TResult Function(BottomBarOptionCreateNote value) createNote,
    required TResult Function(BottomBarOptionDetailNote value) detailNote,
  }) {
    return detailNote(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BottomBarOptions value)? $default, {
    TResult? Function(BottomBarOptionCreateNote value)? createNote,
    TResult? Function(BottomBarOptionDetailNote value)? detailNote,
  }) {
    return detailNote?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BottomBarOptions value)? $default, {
    TResult Function(BottomBarOptionCreateNote value)? createNote,
    TResult Function(BottomBarOptionDetailNote value)? detailNote,
    required TResult orElse(),
  }) {
    if (detailNote != null) {
      return detailNote(this);
    }
    return orElse();
  }
}

abstract class BottomBarOptionDetailNote implements BottomBarOptionModel {
  factory BottomBarOptionDetailNote(
      {required final VoidCallback onTapIconMore,
      required final dynamic Function(bool) onTapPinned,
      required final VoidCallback onTapSearch,
      required final String leftText,
      required final bool statePinned}) = _$BottomBarOptionDetailNote;

  VoidCallback get onTapIconMore;
  dynamic Function(bool) get onTapPinned;
  VoidCallback get onTapSearch;
  String get leftText;
  bool get statePinned;
  @JsonKey(ignore: true)
  _$$BottomBarOptionDetailNoteCopyWith<_$BottomBarOptionDetailNote>
      get copyWith => throw _privateConstructorUsedError;
}
