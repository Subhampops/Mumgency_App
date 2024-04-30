import 'dart:ui';
import 'package:mumgency/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Outline button style
  static ButtonStyle get outlineErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(4.h),
        ),
        shadowColor: theme.colorScheme.errorContainer.withOpacity(0.3),
        elevation: 1,
      );
  static ButtonStyle get outlinePrimary => OutlinedButton.styleFrom(
        backgroundColor: theme.colorScheme.primaryContainer,
        side: BorderSide(
          color: theme.colorScheme.primary,
          width: 3,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.h),
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
