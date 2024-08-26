import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/app_colors.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/common_colors.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/json_source/dark_json_source.dart';

class DarkColors {
  Map colorsFromApi;
  DarkColors(this.colorsFromApi);

  AppColors get getDarkColors =>
      CommonColors(DARK_JSON_SOURCE).getAppCommonColors().copyWith(
            // colorBorderBrandHighlighted: colorsFromApi['transparent'],
            /// ------ hard coded colors -------
            hardCodedColor: Colors.white,
            // newColor: colorsFromApi['dark'],
          );
}

// AppColors darkColorsMap = AppColors(
//   colorStateError: const Color(0xffef5350),
//   colorStateWarning: const Color(0xfff9a825),
//   colorStateSuccess: const Color(0xff66bb69),
//   colorStateInfo: const Color(0xff42a4f5),
//   colorSurfaceCanvas: const Color(0xff191919),
//   colorSurfaceSurfaceDefault: const Color(0xff1f1f1f),
//   colorSurfaceSurfaceRaised: const Color(0xff242424),
//   colorSurfaceSurfaceDisabled: const Color(0xff242424),
//   colorSurfaceSurfaceInverse: const Color(0xff191919),
//   colorSurfaceStateSuccess: const Color(0xffe8f5e9),
//   colorSurfaceStateInfo: const Color(0xffe3f2fd),
//   colorSurfaceStateError: const Color(0xffffebee),
//   colorSurfaceStateWarning: const Color(0xfffffde7),
//   colorSurfaceBrandSurfacePrimary: const Color(0xffe8f5e9),
//   colorContentTextTitle: const Color(0xffffffff),
//   colorContentTextHeading: const Color(0xffffffff),
//   colorContentTextSubtitle: const Color(0xffe0e0e0),
//   colorContentTextBody: const Color(0xffbdbdbd),
//   colorContentTextInfo: const Color(0xff9e9e9e),
//   colorContentTextCaption: const Color(0xff757575),
//   colorContentTextOverline: const Color(0xff616161),
//   colorContentTextBrand: const Color(0xff4caf4f),
//   colorContentTextDisabled: const Color(0xff424242),
//   colorContentTextInverseHeading: const Color(0xffffffff),
//   colorContentTextInverseTitle: const Color(0xffffffff),
//   colorContentTextInverseSubtitle: const Color(0xffe0e0e0),
//   colorContentTextInverseBody: const Color(0xffbdbdbd),
//   colorContentTextInverseInfo: const Color(0xff9e9e9e),
//   colorContentTextInverseCaption: const Color(0xff757575),
//   colorContentTextInverseOverline: const Color(0xff616161),
//   colorContentIconDefault: const Color(0xffe0e0e0),
//   colorContentIconBrandPrimary: const Color(0xff4caf4f),
//   colorContentIconSecondary: const Color(0xfff5f5f5),
//   colorContentIconInfo: const Color(0xff42a4f5),
//   colorContentIconSuccess: const Color(0xff66bb69),
//   colorContentIconWarning: const Color(0xfff9a825),
//   colorContentIconError: const Color(0xffef5350),
//   colorContentIconComplementary: const Color(0xff7b1fa2),
//   colorContentIconInverse: const Color(0xffffffff),
//   colorContentIconDisabled: const Color(0xff424242),
//   colorBorderDefault: const Color(0xff2e2e2e),
//   colorBorderFocused: const Color(0xff616161),
//   colorBorderBrandHighlighted: const Color(0xff4caf4f),
//   colorBorderDisabled: const Color(0xff2e2e2e),
//   colorBorderStateInfo: const Color(0xffbbdefb),
//   colorBorderStateSuccess: const Color(0xffc8e6c9),
//   colorBorderStateWarning: const Color(0xfffef075),
//   colorBorderStateError: const Color(0xffffcdd2),
// );
