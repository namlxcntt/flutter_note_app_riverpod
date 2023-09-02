// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'type_app_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$TypeAppBar {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(String actionText, VoidCallback actionClick)
        actionText,
    required TResult Function(String iconSource, VoidCallback actionClick)
        actionIcon,
    required TResult Function(String title) titleCenter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(String actionText, VoidCallback actionClick)? actionText,
    TResult? Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult? Function(String title)? titleCenter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(String actionText, VoidCallback actionClick)? actionText,
    TResult Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult Function(String title)? titleCenter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TypeAppBar value) $default, {
    required TResult Function(ActionText value) actionText,
    required TResult Function(ActionIcons value) actionIcon,
    required TResult Function(TitleCenter value) titleCenter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TypeAppBar value)? $default, {
    TResult? Function(ActionText value)? actionText,
    TResult? Function(ActionIcons value)? actionIcon,
    TResult? Function(TitleCenter value)? titleCenter,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TypeAppBar value)? $default, {
    TResult Function(ActionText value)? actionText,
    TResult Function(ActionIcons value)? actionIcon,
    TResult Function(TitleCenter value)? titleCenter,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TypeAppBarCopyWith<$Res> {
  factory $TypeAppBarCopyWith(
          TypeAppBar value, $Res Function(TypeAppBar) then) =
      _$TypeAppBarCopyWithImpl<$Res, TypeAppBar>;
}

/// @nodoc
class _$TypeAppBarCopyWithImpl<$Res, $Val extends TypeAppBar>
    implements $TypeAppBarCopyWith<$Res> {
  _$TypeAppBarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TypeAppBarCopyWith<$Res> {
  factory _$$_TypeAppBarCopyWith(
          _$_TypeAppBar value, $Res Function(_$_TypeAppBar) then) =
      __$$_TypeAppBarCopyWithImpl<$Res>;
  @useResult
  $Res call({String actionText});
}

/// @nodoc
class __$$_TypeAppBarCopyWithImpl<$Res>
    extends _$TypeAppBarCopyWithImpl<$Res, _$_TypeAppBar>
    implements _$$_TypeAppBarCopyWith<$Res> {
  __$$_TypeAppBarCopyWithImpl(
      _$_TypeAppBar _value, $Res Function(_$_TypeAppBar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionText = null,
  }) {
    return _then(_$_TypeAppBar(
      actionText: null == actionText
          ? _value.actionText
          : actionText // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_TypeAppBar implements _TypeAppBar {
  _$_TypeAppBar({required this.actionText});

  @override
  final String actionText;

  @override
  String toString() {
    return 'TypeAppBar(actionText: $actionText)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TypeAppBar &&
            (identical(other.actionText, actionText) ||
                other.actionText == actionText));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actionText);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TypeAppBarCopyWith<_$_TypeAppBar> get copyWith =>
      __$$_TypeAppBarCopyWithImpl<_$_TypeAppBar>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(String actionText, VoidCallback actionClick)
        actionText,
    required TResult Function(String iconSource, VoidCallback actionClick)
        actionIcon,
    required TResult Function(String title) titleCenter,
  }) {
    return $default(this.actionText);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(String actionText, VoidCallback actionClick)? actionText,
    TResult? Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult? Function(String title)? titleCenter,
  }) {
    return $default?.call(this.actionText);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(String actionText, VoidCallback actionClick)? actionText,
    TResult Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult Function(String title)? titleCenter,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this.actionText);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TypeAppBar value) $default, {
    required TResult Function(ActionText value) actionText,
    required TResult Function(ActionIcons value) actionIcon,
    required TResult Function(TitleCenter value) titleCenter,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TypeAppBar value)? $default, {
    TResult? Function(ActionText value)? actionText,
    TResult? Function(ActionIcons value)? actionIcon,
    TResult? Function(TitleCenter value)? titleCenter,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TypeAppBar value)? $default, {
    TResult Function(ActionText value)? actionText,
    TResult Function(ActionIcons value)? actionIcon,
    TResult Function(TitleCenter value)? titleCenter,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _TypeAppBar implements TypeAppBar {
  factory _TypeAppBar({required final String actionText}) = _$_TypeAppBar;

  String get actionText;
  @JsonKey(ignore: true)
  _$$_TypeAppBarCopyWith<_$_TypeAppBar> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionTextCopyWith<$Res> {
  factory _$$ActionTextCopyWith(
          _$ActionText value, $Res Function(_$ActionText) then) =
      __$$ActionTextCopyWithImpl<$Res>;
  @useResult
  $Res call({String actionText, VoidCallback actionClick});
}

/// @nodoc
class __$$ActionTextCopyWithImpl<$Res>
    extends _$TypeAppBarCopyWithImpl<$Res, _$ActionText>
    implements _$$ActionTextCopyWith<$Res> {
  __$$ActionTextCopyWithImpl(
      _$ActionText _value, $Res Function(_$ActionText) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? actionText = null,
    Object? actionClick = null,
  }) {
    return _then(_$ActionText(
      actionText: null == actionText
          ? _value.actionText
          : actionText // ignore: cast_nullable_to_non_nullable
              as String,
      actionClick: null == actionClick
          ? _value.actionClick
          : actionClick // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ActionText implements ActionText {
  _$ActionText({required this.actionText, required this.actionClick});

  @override
  final String actionText;
  @override
  final VoidCallback actionClick;

  @override
  String toString() {
    return 'TypeAppBar.actionText(actionText: $actionText, actionClick: $actionClick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionText &&
            (identical(other.actionText, actionText) ||
                other.actionText == actionText) &&
            (identical(other.actionClick, actionClick) ||
                other.actionClick == actionClick));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actionText, actionClick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionTextCopyWith<_$ActionText> get copyWith =>
      __$$ActionTextCopyWithImpl<_$ActionText>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(String actionText, VoidCallback actionClick)
        actionText,
    required TResult Function(String iconSource, VoidCallback actionClick)
        actionIcon,
    required TResult Function(String title) titleCenter,
  }) {
    return actionText(this.actionText, actionClick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(String actionText, VoidCallback actionClick)? actionText,
    TResult? Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult? Function(String title)? titleCenter,
  }) {
    return actionText?.call(this.actionText, actionClick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(String actionText, VoidCallback actionClick)? actionText,
    TResult Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult Function(String title)? titleCenter,
    required TResult orElse(),
  }) {
    if (actionText != null) {
      return actionText(this.actionText, actionClick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TypeAppBar value) $default, {
    required TResult Function(ActionText value) actionText,
    required TResult Function(ActionIcons value) actionIcon,
    required TResult Function(TitleCenter value) titleCenter,
  }) {
    return actionText(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TypeAppBar value)? $default, {
    TResult? Function(ActionText value)? actionText,
    TResult? Function(ActionIcons value)? actionIcon,
    TResult? Function(TitleCenter value)? titleCenter,
  }) {
    return actionText?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TypeAppBar value)? $default, {
    TResult Function(ActionText value)? actionText,
    TResult Function(ActionIcons value)? actionIcon,
    TResult Function(TitleCenter value)? titleCenter,
    required TResult orElse(),
  }) {
    if (actionText != null) {
      return actionText(this);
    }
    return orElse();
  }
}

abstract class ActionText implements TypeAppBar {
  factory ActionText(
      {required final String actionText,
      required final VoidCallback actionClick}) = _$ActionText;

  String get actionText;
  VoidCallback get actionClick;
  @JsonKey(ignore: true)
  _$$ActionTextCopyWith<_$ActionText> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ActionIconsCopyWith<$Res> {
  factory _$$ActionIconsCopyWith(
          _$ActionIcons value, $Res Function(_$ActionIcons) then) =
      __$$ActionIconsCopyWithImpl<$Res>;
  @useResult
  $Res call({String iconSource, VoidCallback actionClick});
}

/// @nodoc
class __$$ActionIconsCopyWithImpl<$Res>
    extends _$TypeAppBarCopyWithImpl<$Res, _$ActionIcons>
    implements _$$ActionIconsCopyWith<$Res> {
  __$$ActionIconsCopyWithImpl(
      _$ActionIcons _value, $Res Function(_$ActionIcons) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? iconSource = null,
    Object? actionClick = null,
  }) {
    return _then(_$ActionIcons(
      iconSource: null == iconSource
          ? _value.iconSource
          : iconSource // ignore: cast_nullable_to_non_nullable
              as String,
      actionClick: null == actionClick
          ? _value.actionClick
          : actionClick // ignore: cast_nullable_to_non_nullable
              as VoidCallback,
    ));
  }
}

/// @nodoc

class _$ActionIcons implements ActionIcons {
  _$ActionIcons({required this.iconSource, required this.actionClick});

  @override
  final String iconSource;
  @override
  final VoidCallback actionClick;

  @override
  String toString() {
    return 'TypeAppBar.actionIcon(iconSource: $iconSource, actionClick: $actionClick)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ActionIcons &&
            (identical(other.iconSource, iconSource) ||
                other.iconSource == iconSource) &&
            (identical(other.actionClick, actionClick) ||
                other.actionClick == actionClick));
  }

  @override
  int get hashCode => Object.hash(runtimeType, iconSource, actionClick);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ActionIconsCopyWith<_$ActionIcons> get copyWith =>
      __$$ActionIconsCopyWithImpl<_$ActionIcons>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(String actionText, VoidCallback actionClick)
        actionText,
    required TResult Function(String iconSource, VoidCallback actionClick)
        actionIcon,
    required TResult Function(String title) titleCenter,
  }) {
    return actionIcon(iconSource, actionClick);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(String actionText, VoidCallback actionClick)? actionText,
    TResult? Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult? Function(String title)? titleCenter,
  }) {
    return actionIcon?.call(iconSource, actionClick);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(String actionText, VoidCallback actionClick)? actionText,
    TResult Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult Function(String title)? titleCenter,
    required TResult orElse(),
  }) {
    if (actionIcon != null) {
      return actionIcon(iconSource, actionClick);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TypeAppBar value) $default, {
    required TResult Function(ActionText value) actionText,
    required TResult Function(ActionIcons value) actionIcon,
    required TResult Function(TitleCenter value) titleCenter,
  }) {
    return actionIcon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TypeAppBar value)? $default, {
    TResult? Function(ActionText value)? actionText,
    TResult? Function(ActionIcons value)? actionIcon,
    TResult? Function(TitleCenter value)? titleCenter,
  }) {
    return actionIcon?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TypeAppBar value)? $default, {
    TResult Function(ActionText value)? actionText,
    TResult Function(ActionIcons value)? actionIcon,
    TResult Function(TitleCenter value)? titleCenter,
    required TResult orElse(),
  }) {
    if (actionIcon != null) {
      return actionIcon(this);
    }
    return orElse();
  }
}

abstract class ActionIcons implements TypeAppBar {
  factory ActionIcons(
      {required final String iconSource,
      required final VoidCallback actionClick}) = _$ActionIcons;

  String get iconSource;
  VoidCallback get actionClick;
  @JsonKey(ignore: true)
  _$$ActionIconsCopyWith<_$ActionIcons> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TitleCenterCopyWith<$Res> {
  factory _$$TitleCenterCopyWith(
          _$TitleCenter value, $Res Function(_$TitleCenter) then) =
      __$$TitleCenterCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TitleCenterCopyWithImpl<$Res>
    extends _$TypeAppBarCopyWithImpl<$Res, _$TitleCenter>
    implements _$$TitleCenterCopyWith<$Res> {
  __$$TitleCenterCopyWithImpl(
      _$TitleCenter _value, $Res Function(_$TitleCenter) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TitleCenter(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TitleCenter implements TitleCenter {
  _$TitleCenter({required this.title});

  @override
  final String title;

  @override
  String toString() {
    return 'TypeAppBar.titleCenter(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TitleCenter &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TitleCenterCopyWith<_$TitleCenter> get copyWith =>
      __$$TitleCenterCopyWithImpl<_$TitleCenter>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String actionText) $default, {
    required TResult Function(String actionText, VoidCallback actionClick)
        actionText,
    required TResult Function(String iconSource, VoidCallback actionClick)
        actionIcon,
    required TResult Function(String title) titleCenter,
  }) {
    return titleCenter(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String actionText)? $default, {
    TResult? Function(String actionText, VoidCallback actionClick)? actionText,
    TResult? Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult? Function(String title)? titleCenter,
  }) {
    return titleCenter?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String actionText)? $default, {
    TResult Function(String actionText, VoidCallback actionClick)? actionText,
    TResult Function(String iconSource, VoidCallback actionClick)? actionIcon,
    TResult Function(String title)? titleCenter,
    required TResult orElse(),
  }) {
    if (titleCenter != null) {
      return titleCenter(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TypeAppBar value) $default, {
    required TResult Function(ActionText value) actionText,
    required TResult Function(ActionIcons value) actionIcon,
    required TResult Function(TitleCenter value) titleCenter,
  }) {
    return titleCenter(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_TypeAppBar value)? $default, {
    TResult? Function(ActionText value)? actionText,
    TResult? Function(ActionIcons value)? actionIcon,
    TResult? Function(TitleCenter value)? titleCenter,
  }) {
    return titleCenter?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_TypeAppBar value)? $default, {
    TResult Function(ActionText value)? actionText,
    TResult Function(ActionIcons value)? actionIcon,
    TResult Function(TitleCenter value)? titleCenter,
    required TResult orElse(),
  }) {
    if (titleCenter != null) {
      return titleCenter(this);
    }
    return orElse();
  }
}

abstract class TitleCenter implements TypeAppBar {
  factory TitleCenter({required final String title}) = _$TitleCenter;

  String get title;
  @JsonKey(ignore: true)
  _$$TitleCenterCopyWith<_$TitleCenter> get copyWith =>
      throw _privateConstructorUsedError;
}
