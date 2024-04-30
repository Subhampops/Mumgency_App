import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.5),
      );
  static get bodyLargeInterErrorContainer =>
      theme.textTheme.bodyLarge!.inter.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.5),
      );
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontSize: 15.fSize,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(0.5),
      );
  static get bodySmallErrorContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodySmallInterErrorContainer =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get bodySmallInterErrorContainer_1 =>
      theme.textTheme.bodySmall!.inter.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  // Headline text style
  static get headlineSmallPalanquinPrimary =>
      theme.textTheme.headlineSmall!.palanquin.copyWith(
        color: theme.colorScheme.primary,
        fontWeight: FontWeight.w600,
      );
  static get headlineSmallPoppinsErrorContainer =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get headlineSmallPoppinsErrorContainerSemiBold =>
      theme.textTheme.headlineSmall!.poppins.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  // Label text style
  static get labelLargePrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.primary,
      );
  // Title text style
  static get titleLargeErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
      );
  static get titleLargeErrorContainerRegular =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.errorContainer.withOpacity(1),
        fontWeight: FontWeight.w400,
      );
}

extension on TextStyle {
  TextStyle get sFProText {
    return copyWith(
      fontFamily: 'SF Pro Text',
    );
  }

  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get lilyScriptOne {
    return copyWith(
      fontFamily: 'Lily Script One',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get palanquin {
    return copyWith(
      fontFamily: 'Palanquin',
    );
  }
}
