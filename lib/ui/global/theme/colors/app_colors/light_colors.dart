import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/app_colors.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/common_colors.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/json_source/light_json_source.dart';

class LightColors {
  Map colorsFromApi;
  LightColors(this.colorsFromApi);

  AppColors get getLightColors =>
      CommonColors(LIGHT_JSON_SOURCE).getAppCommonColors().copyWith(
            // colorBorderBrandHighlighted: colorsFromApi['transparent'],
            /// ------ hard coded colors -------
            hardCodedColor: Colors.black,
            // newColor: colorsFromApi['dark'],
          );
}

// AppColors lightColorsMap = AppColors(
//   colorStateError: const Color(0xffef5350),
//   colorStateWarning: const Color(0xfff9a825),
//   colorStateSuccess: const Color(0xff66bb69),
//   colorStateInfo: const Color(0xff42a4f5),
//   colorSurfaceCanvas: const Color(0xfffafafa),
//   colorSurfaceSurfaceDefault: const Color(0xffffffff),
//   colorSurfaceSurfaceRaised: const Color(0xfffafafa),
//   colorSurfaceSurfaceDisabled: const Color(0xfffafafa),
//   colorSurfaceSurfaceInverse: const Color(0xff191919),
//   colorSurfaceStateSuccess: const Color(0xffe8f5e9),
//   colorSurfaceStateInfo: const Color(0xffe3f2fd),
//   colorSurfaceStateError: const Color(0xffffebee),
//   colorSurfaceStateWarning: const Color(0xfffffde7),
//   colorSurfaceBrandSurfacePrimary: const Color(0xffe8f5e9),
//   colorContentTextTitle: const Color(0xff263238),
//   colorContentTextHeading: const Color(0xff263238),
//   colorContentTextSubtitle: const Color(0xff455a64),
//   colorContentTextBody: const Color(0xff37474f),
//   colorContentTextInfo: const Color(0xff546e7a),
//   colorContentTextCaption: const Color(0xff607d8b),
//   colorContentTextOverline: const Color(0xff78909c),
//   colorContentTextBrand: const Color(0xff4caf4f),
//   colorContentTextDisabled: const Color(0xffb0bec5),
//   colorContentTextInverseHeading: const Color(0xffffffff),
//   colorContentTextInverseTitle: const Color(0xffffffff),
//   colorContentTextInverseSubtitle: const Color(0xffe0e0e0),
//   colorContentTextInverseBody: const Color(0xffbdbdbd),
//   colorContentTextInverseInfo: const Color(0xff9e9e9e),
//   colorContentTextInverseCaption: const Color(0xff757575),
//   colorContentTextInverseOverline: const Color(0xff616161),
//   colorContentIconDefault: const Color(0xff455a64),
//   colorContentIconBrandPrimary: const Color(0xff4caf4f),
//   colorContentIconSecondary: const Color(0xff263238),
//   colorContentIconInfo: const Color(0xff42a4f5),
//   colorContentIconSuccess: const Color(0xff66bb69),
//   colorContentIconWarning: const Color(0xfff9a825),
//   colorContentIconError: const Color(0xffef5350),
//   colorContentIconComplementary: const Color(0xff7b1fa2),
//   colorContentIconInverse: const Color(0xffffffff),
//   colorContentIconDisabled: const Color(0xffb0bec5),
//   colorBorderDefault: const Color(0xffeceff1),
//   colorBorderFocused: const Color(0xff455a64),
//   colorBorderBrandHighlighted: const Color(0xff4caf4f),
//   colorBorderDisabled: const Color(0xffeceff1),
//   colorBorderStateInfo: const Color(0xffbbdefb),
//   colorBorderStateSuccess: const Color(0xffc8e6c9),
//   colorBorderStateWarning: const Color(0xfffef075),
//   colorBorderStateError: const Color(0xffffcdd2),
// );
