import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/colors_setter.dart';

class AppColors {
  /// ----- color.state --------
  final Color colorStateError;
  final Color colorStateWarning;
  final Color colorStateSuccess;
  final Color colorStateInfo;

  /// ----- color.surface --------
  final Color colorSurfaceCanvas;
  final Color colorSurfaceSurfaceDefault;
  final Color colorSurfaceSurfaceRaised;
  final Color colorSurfaceSurfaceDisabled;
  final Color colorSurfaceSurfaceInverse;
  final Color colorSurfaceStateSuccess;
  final Color colorSurfaceStateInfo;
  final Color colorSurfaceStateError;
  final Color colorSurfaceStateWarning;
  final Color colorSurfaceBrandSurfacePrimary;

  /// ----- color.content.text --------
  final Color colorContentTextTitle;
  final Color colorContentTextHeading;
  final Color colorContentTextSubtitle;
  final Color colorContentTextBody;
  final Color colorContentTextInfo;
  final Color colorContentTextCaption;
  final Color colorContentTextOverline;
  final Color colorContentTextBrand;
  final Color colorContentTextDisabled;

  /// ----- color.content.text.inverse --------
  final Color colorContentTextInverseHeading;
  final Color colorContentTextInverseTitle;
  final Color colorContentTextInverseSubtitle;
  final Color colorContentTextInverseBody;
  final Color colorContentTextInverseInfo;
  final Color colorContentTextInverseCaption;
  final Color colorContentTextInverseOverline;

  /// ----- color.content.icon --------
  final Color colorContentIconDefault;
  final Color colorContentIconBrandPrimary;
  final Color colorContentIconSecondary;
  final Color colorContentIconInfo;
  final Color colorContentIconSuccess;
  final Color colorContentIconWarning;
  final Color colorContentIconError;
  final Color colorContentIconComplementary;
  final Color colorContentIconInverse;
  final Color colorContentIconDisabled;

  /// ----- color.border --------
  final Color colorBorderDefault;
  final Color colorBorderFocused;
  final Color colorBorderBrandHighlighted;
  final Color colorBorderDisabled;

  /// ----- color.border.state --------
  final Color colorBorderStateInfo;
  final Color colorBorderStateSuccess;
  final Color colorBorderStateWarning;
  final Color colorBorderStateError;

  /// ----- hard coded colors --------
  final Color? hardCodedColor;

  AppColors({
    required this.colorStateError,
    required this.colorStateWarning,
    required this.colorStateSuccess,
    required this.colorStateInfo,
    required this.colorSurfaceCanvas,
    required this.colorSurfaceSurfaceDefault,
    required this.colorSurfaceSurfaceRaised,
    required this.colorSurfaceSurfaceDisabled,
    required this.colorSurfaceSurfaceInverse,
    required this.colorSurfaceStateSuccess,
    required this.colorSurfaceStateInfo,
    required this.colorSurfaceStateError,
    required this.colorSurfaceStateWarning,
    required this.colorSurfaceBrandSurfacePrimary,
    required this.colorContentTextTitle,
    required this.colorContentTextHeading,
    required this.colorContentTextSubtitle,
    required this.colorContentTextBody,
    required this.colorContentTextInfo,
    required this.colorContentTextCaption,
    required this.colorContentTextOverline,
    required this.colorContentTextBrand,
    required this.colorContentTextDisabled,
    required this.colorContentTextInverseHeading,
    required this.colorContentTextInverseTitle,
    required this.colorContentTextInverseSubtitle,
    required this.colorContentTextInverseBody,
    required this.colorContentTextInverseInfo,
    required this.colorContentTextInverseCaption,
    required this.colorContentTextInverseOverline,
    required this.colorContentIconDefault,
    required this.colorContentIconBrandPrimary,
    required this.colorContentIconSecondary,
    required this.colorContentIconInfo,
    required this.colorContentIconSuccess,
    required this.colorContentIconWarning,
    required this.colorContentIconError,
    required this.colorContentIconComplementary,
    required this.colorContentIconInverse,
    required this.colorContentIconDisabled,
    required this.colorBorderDefault,
    required this.colorBorderFocused,
    required this.colorBorderBrandHighlighted,
    required this.colorBorderDisabled,
    required this.colorBorderStateInfo,
    required this.colorBorderStateSuccess,
    required this.colorBorderStateWarning,
    required this.colorBorderStateError,

    /// ------ hard coded colors -------
    this.hardCodedColor,
  });

  factory AppColors.light() {
    return ColorsSetter.lightColors;
  }

  factory AppColors.dark() {
    return ColorsSetter.darkColors;
  }

  static AppColors of(BuildContext context) {
    return Theme.of(context).brightness == Brightness.dark
        ? AppColors.dark()
        : AppColors.light();
  }

  AppColors copyWith({
    Color? colorStateError,
    Color? colorStateWarning,
    Color? colorStateSuccess,
    Color? colorStateInfo,
    Color? colorSurfaceCanvas,
    Color? colorSurfaceSurfaceDefault,
    Color? colorSurfaceSurfaceRaised,
    Color? colorSurfaceSurfaceDisabled,
    Color? colorSurfaceSurfaceInverse,
    Color? colorSurfaceStateSuccess,
    Color? colorSurfaceStateInfo,
    Color? colorSurfaceStateError,
    Color? colorSurfaceStateWarning,
    Color? colorSurfaceBrandSurfacePrimary,
    Color? colorContentTextTitle,
    Color? colorContentTextHeading,
    Color? colorContentTextSubtitle,
    Color? colorContentTextBody,
    Color? colorContentTextInfo,
    Color? colorContentTextCaption,
    Color? colorContentTextOverline,
    Color? colorContentTextBrand,
    Color? colorContentTextDisabled,
    Color? colorContentTextInverseHeading,
    Color? colorContentTextInverseTitle,
    Color? colorContentTextInverseSubtitle,
    Color? colorContentTextInverseBody,
    Color? colorContentTextInverseInfo,
    Color? colorContentTextInverseCaption,
    Color? colorContentTextInverseOverline,
    Color? colorContentIconDefault,
    Color? colorContentIconBrandPrimary,
    Color? colorContentIconSecondary,
    Color? colorContentIconInfo,
    Color? colorContentIconSuccess,
    Color? colorContentIconWarning,
    Color? colorContentIconError,
    Color? colorContentIconComplementary,
    Color? colorContentIconInverse,
    Color? colorContentIconDisabled,
    Color? colorBorderDefault,
    Color? colorBorderFocused,
    Color? colorBorderBrandHighlighted,
    Color? colorBorderDisabled,
    Color? colorBorderStateInfo,
    Color? colorBorderStateSuccess,
    Color? colorBorderStateWarning,
    Color? colorBorderStateError,

    /// ------ hard coded colors -------
    Color? hardCodedColor,
  }) {
    return AppColors(
      colorStateError: colorStateError ?? this.colorStateError,
      colorStateWarning: colorStateWarning ?? this.colorStateWarning,
      colorStateSuccess: colorStateSuccess ?? this.colorStateSuccess,
      colorStateInfo: colorStateInfo ?? this.colorStateInfo,
      colorSurfaceCanvas: colorSurfaceCanvas ?? this.colorSurfaceCanvas,
      colorSurfaceSurfaceDefault:
          colorSurfaceSurfaceDefault ?? this.colorSurfaceSurfaceDefault,
      colorSurfaceSurfaceRaised:
          colorSurfaceSurfaceRaised ?? this.colorSurfaceSurfaceRaised,
      colorSurfaceSurfaceDisabled:
          colorSurfaceSurfaceDisabled ?? this.colorSurfaceSurfaceDisabled,
      colorSurfaceSurfaceInverse:
          colorSurfaceSurfaceInverse ?? this.colorSurfaceSurfaceInverse,
      colorSurfaceStateSuccess:
          colorSurfaceStateSuccess ?? this.colorSurfaceStateSuccess,
      colorSurfaceStateInfo:
          colorSurfaceStateInfo ?? this.colorSurfaceStateInfo,
      colorSurfaceStateError:
          colorSurfaceStateError ?? this.colorSurfaceStateError,
      colorSurfaceStateWarning:
          colorSurfaceStateWarning ?? this.colorSurfaceStateWarning,
      colorSurfaceBrandSurfacePrimary: colorSurfaceBrandSurfacePrimary ??
          this.colorSurfaceBrandSurfacePrimary,
      colorContentTextTitle:
          colorContentTextTitle ?? this.colorContentTextTitle,
      colorContentTextHeading:
          colorContentTextHeading ?? this.colorContentTextHeading,
      colorContentTextSubtitle:
          colorContentTextSubtitle ?? this.colorContentTextSubtitle,
      colorContentTextBody: colorContentTextBody ?? this.colorContentTextBody,
      colorContentTextInfo: colorContentTextInfo ?? this.colorContentTextInfo,
      colorContentTextCaption:
          colorContentTextCaption ?? this.colorContentTextCaption,
      colorContentTextOverline:
          colorContentTextOverline ?? this.colorContentTextOverline,
      colorContentTextBrand:
          colorContentTextBrand ?? this.colorContentTextBrand,
      colorContentTextDisabled:
          colorContentTextDisabled ?? this.colorContentTextDisabled,
      colorContentTextInverseHeading:
          colorContentTextInverseHeading ?? this.colorContentTextInverseHeading,
      colorContentTextInverseTitle:
          colorContentTextInverseTitle ?? this.colorContentTextInverseTitle,
      colorContentTextInverseSubtitle: colorContentTextInverseSubtitle ??
          this.colorContentTextInverseSubtitle,
      colorContentTextInverseBody:
          colorContentTextInverseBody ?? this.colorContentTextInverseBody,
      colorContentTextInverseInfo:
          colorContentTextInverseInfo ?? this.colorContentTextInverseInfo,
      colorContentTextInverseCaption:
          colorContentTextInverseCaption ?? this.colorContentTextInverseCaption,
      colorContentTextInverseOverline: colorContentTextInverseOverline ??
          this.colorContentTextInverseOverline,
      colorContentIconDefault:
          colorContentIconDefault ?? this.colorContentIconDefault,
      colorContentIconBrandPrimary:
          colorContentIconBrandPrimary ?? this.colorContentIconBrandPrimary,
      colorContentIconSecondary:
          colorContentIconSecondary ?? this.colorContentIconSecondary,
      colorContentIconInfo: colorContentIconInfo ?? this.colorContentIconInfo,
      colorContentIconSuccess:
          colorContentIconSuccess ?? this.colorContentIconSuccess,
      colorContentIconWarning:
          colorContentIconWarning ?? this.colorContentIconWarning,
      colorContentIconError:
          colorContentIconError ?? this.colorContentIconError,
      colorContentIconComplementary:
          colorContentIconComplementary ?? this.colorContentIconComplementary,
      colorContentIconInverse:
          colorContentIconInverse ?? this.colorContentIconInverse,
      colorContentIconDisabled:
          colorContentIconDisabled ?? this.colorContentIconDisabled,
      colorBorderDefault: colorBorderDefault ?? this.colorBorderDefault,
      colorBorderFocused: colorBorderFocused ?? this.colorBorderFocused,
      colorBorderBrandHighlighted:
          colorBorderBrandHighlighted ?? this.colorBorderBrandHighlighted,
      colorBorderDisabled: colorBorderDisabled ?? this.colorBorderDisabled,
      colorBorderStateInfo: colorBorderStateInfo ?? this.colorBorderStateInfo,
      colorBorderStateSuccess:
          colorBorderStateSuccess ?? this.colorBorderStateSuccess,
      colorBorderStateWarning:
          colorBorderStateWarning ?? this.colorBorderStateWarning,
      colorBorderStateError:
          colorBorderStateError ?? this.colorBorderStateError,

      /// ------ hard coded colors -------
      hardCodedColor: hardCodedColor ?? const Color(0x0fffffff),
    );
  }

  Map<String, Color> getColorsMap() {
    return {
      'colorStateError': colorStateError,
      'colorStateWarning': colorStateWarning,
      'colorStateSuccess': colorStateSuccess,
      'colorStateInfo': colorStateInfo,
      'colorSurfaceCanvas': colorSurfaceCanvas,
      'colorSurfaceSurfaceDefault': colorSurfaceSurfaceDefault,
      'colorSurfaceSurfaceRaised': colorSurfaceSurfaceRaised,
      'colorSurfaceSurfaceDisabled': colorSurfaceSurfaceDisabled,
      'colorSurfaceSurfaceInverse': colorSurfaceSurfaceInverse,
      'colorSurfaceStateSuccess': colorSurfaceStateSuccess,
      'colorSurfaceStateInfo': colorSurfaceStateInfo,
      'colorSurfaceStateError': colorSurfaceStateError,
      'colorSurfaceStateWarning': colorSurfaceStateWarning,
      'colorSurfaceBrandSurfacePrimary': colorSurfaceBrandSurfacePrimary,
      'colorContentTextTitle': colorContentTextTitle,
      'colorContentTextHeading': colorContentTextHeading,
      'colorContentTextSubtitle': colorContentTextSubtitle,
      'colorContentTextBody': colorContentTextBody,
      'colorContentTextInfo': colorContentTextInfo,
      'colorContentTextCaption': colorContentTextCaption,
      'colorContentTextOverline': colorContentTextOverline,
      'colorContentTextBrand': colorContentTextBrand,
      'colorContentTextDisabled': colorContentTextDisabled,
      'colorContentTextInverseHeading': colorContentTextInverseHeading,
      'colorContentTextInverseTitle': colorContentTextInverseTitle,
      'colorContentTextInverseSubtitle': colorContentTextInverseSubtitle,
      'colorContentTextInverseBody': colorContentTextInverseBody,
      'colorContentTextInverseInfo': colorContentTextInverseInfo,
      'colorContentTextInverseCaption': colorContentTextInverseCaption,
      'colorContentTextInverseOverline': colorContentTextInverseOverline,
      'colorContentIconDefault': colorContentIconDefault,
      'colorContentIconBrandPrimary': colorContentIconBrandPrimary,
      'colorContentIconSecondary': colorContentIconSecondary,
      'colorContentIconInfo': colorContentIconInfo,
      'colorContentIconSuccess': colorContentIconSuccess,
      'colorContentIconWarning': colorContentIconWarning,
      'colorContentIconError': colorContentIconError,
      'colorContentIconComplementary': colorContentIconComplementary,
      'colorContentIconInverse': colorContentIconInverse,
      'colorContentIconDisabled': colorContentIconDisabled,
      'colorBorderDefault': colorBorderDefault,
      'colorBorderFocused': colorBorderFocused,
      'colorBorderBrandHighlighted': colorBorderBrandHighlighted,
      'colorBorderDisabled': colorBorderDisabled,
      'colorBorderStateInfo': colorBorderStateInfo,
      'colorBorderStateSuccess': colorBorderStateSuccess,
      'colorBorderStateWarning': colorBorderStateWarning,
      'colorBorderStateError': colorBorderStateError,
    };
  }
}
