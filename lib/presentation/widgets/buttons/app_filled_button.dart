// ignore_for_file: omit_local_variable_types

import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:groceries/utils/constants/app_colors.dart';
import 'package:groceries/utils/constants/app_text_styles.dart';

class AppFilledButton extends ButtonStyleButton {
  const AppFilledButton({
    required super.child,
    required super.onPressed,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    super.autofocus = true,
    super.clipBehavior = Clip.antiAlias,
    super.key,
  });

  factory AppFilledButton.icon({
    required VoidCallback? onPressed,
    required Widget icon,
    required Widget label,
    Key? key,
    VoidCallback? onLongPress,
    ValueChanged<bool>? onHover,
    ValueChanged<bool>? onFocusChange,
    ButtonStyle? style,
    FocusNode? focusNode,
    bool? autofocus,
    Clip? clipBehavior,
  }) = _AppFilledButtonWithIcon;

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    return _AppFilledButtonStyle(context);
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return _AppFilledButtonStyle(context);
  }
}

class _AppFilledButtonStyle extends ButtonStyle {
  const _AppFilledButtonStyle(this.context)
      : super(
          animationDuration: const Duration(milliseconds: 200),
          enableFeedback: true,
          alignment: Alignment.center,
        );

  final BuildContext context;

  @override
  MaterialStateProperty<TextStyle?> get textStyle =>
      MaterialStatePropertyAll<TextStyle?>(
        AppTextStyles.regular(
          context: context,
          color: AppColors.white,
          fontSize: 15,
        ),
      );

  @override
  MaterialStateProperty<Color?>? get backgroundColor =>
      MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return AppColors.lightGrey;
          }
          return Theme.of(context).primaryColorLight;
        },
      );

  @override
  MaterialStateProperty<Color?>? get foregroundColor =>
      MaterialStateProperty.all(
        AppColors.white,
      );

  @override
  MaterialStateProperty<Color?>? get overlayColor => MaterialStateProperty.all(
        AppColors.white.withOpacity(0.15),
      );

  @override
  MaterialStateProperty<Color>? get shadowColor =>
      MaterialStatePropertyAll<Color>(
        Theme.of(context).hintColor,
      );

  @override
  MaterialStateProperty<double>? get elevation =>
      MaterialStateProperty.resolveWith((Set<MaterialState> states) {
        if (states.contains(MaterialState.disabled)) {
          return 0.0;
        }
        if (states.contains(MaterialState.hovered)) {
          return 1.0;
        }
        if (states.contains(MaterialState.focused)) {
          return 3.0;
        }
        if (states.contains(MaterialState.pressed)) {
          return 0.0;
        }
        return 0.0;
      });

  @override
  MaterialStateProperty<EdgeInsetsGeometry>? get padding {
    return MaterialStatePropertyAll<EdgeInsetsGeometry>(
      _scaledPadding(context),
    );
  }

  @override
  MaterialStateProperty<Size>? get minimumSize =>
      const MaterialStatePropertyAll<Size>(
        Size(64, 40),
      );

  @override
  MaterialStateProperty<Size>? get maximumSize =>
      const MaterialStatePropertyAll<Size>(Size.infinite);

  @override
  MaterialStateProperty<OutlinedBorder>? get shape =>
      MaterialStatePropertyAll<OutlinedBorder>(
        ContinuousRectangleBorder(borderRadius: BorderRadius.circular(20)),
      );

  @override
  MaterialStateProperty<MouseCursor?>? get mouseCursor =>
      MaterialStateProperty.resolveWith(
        (Set<MaterialState> states) {
          if (states.contains(MaterialState.disabled)) {
            return SystemMouseCursors.basic;
          }
          return SystemMouseCursors.click;
        },
      );

  @override
  VisualDensity? get visualDensity => VisualDensity.comfortable;

  @override
  MaterialTapTargetSize? get tapTargetSize => MaterialTapTargetSize.padded;

  @override
  InteractiveInkFeatureFactory? get splashFactory => InkSparkle.splashFactory;
}

EdgeInsetsGeometry _scaledPadding(BuildContext context) {
  const padding1x = 24.0;
  return ButtonStyleButton.scaledPadding(
    const EdgeInsets.symmetric(horizontal: padding1x),
    const EdgeInsets.symmetric(horizontal: padding1x / 2),
    const EdgeInsets.symmetric(horizontal: padding1x / 2 / 2),
    MediaQuery.textScaleFactorOf(context),
  );
}

class _AppFilledButtonWithIcon extends AppFilledButton {
  _AppFilledButtonWithIcon({
    required super.onPressed,
    required Widget icon,
    required Widget label,
    super.key,
    super.onLongPress,
    super.onHover,
    super.onFocusChange,
    super.style,
    super.focusNode,
    bool? autofocus,
    Clip? clipBehavior,
  }) : super(
          autofocus: autofocus ?? false,
          clipBehavior: clipBehavior ?? Clip.none,
          child: _AppFilledButtonWithIconChild(icon: icon, label: label),
        );

  @override
  ButtonStyle defaultStyleOf(BuildContext context) {
    final useMaterial3 = Theme.of(context).useMaterial3;
    final scaledPadding = useMaterial3
        ? ButtonStyleButton.scaledPadding(
            const EdgeInsetsDirectional.fromSTEB(16, 0, 24, 0),
            const EdgeInsetsDirectional.fromSTEB(8, 0, 12, 0),
            const EdgeInsetsDirectional.fromSTEB(4, 0, 6, 0),
            MediaQuery.textScaleFactorOf(context),
          )
        : ButtonStyleButton.scaledPadding(
            const EdgeInsetsDirectional.fromSTEB(12, 0, 16, 0),
            const EdgeInsets.symmetric(horizontal: 8),
            const EdgeInsetsDirectional.fromSTEB(8, 0, 4, 0),
            MediaQuery.textScaleFactorOf(context),
          );
    return super.defaultStyleOf(context).copyWith(
          padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(scaledPadding),
        );
  }

  @override
  ButtonStyle? themeStyleOf(BuildContext context) {
    return null;
  }
}

class _AppFilledButtonWithIconChild extends StatelessWidget {
  const _AppFilledButtonWithIconChild({
    required this.label,
    required this.icon,
  });

  final Widget label;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final scale = MediaQuery.textScaleFactorOf(context);
    final double gap = scale <= 1 ? 8 : lerpDouble(8, 4, min(scale - 1, 1))!;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        icon,
        SizedBox(width: gap),
        Flexible(
          child: label,
        ),
      ],
    );
  }
}
