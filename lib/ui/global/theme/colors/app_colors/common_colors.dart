import 'dart:convert';
import 'package:theme_switch_bloc/ui/global/theme/colors/app_colors/app_colors.dart';
import '../get_color_from_json_source.dart';
import '../json_source/models/color_model.dart';
import 'dart:ui' as ui;

typedef ColorFromJsonSource = ui.Color Function(String colorKey, Map source);
ColorFromJsonSource getColorSource = getColorFromJsonSource;

class CommonColors {
  Map jsonSource;
  CommonColors(this.jsonSource);

  AppColors getAppCommonColors() {
    final ColorModel colorModel = colorModelFromJson(jsonEncode(jsonSource));
    final Color color = colorModel.color;
    final State state = color.state;
    final Surface surface = color.surface;
    final Content content = color.content;
    final Text text = content.text;
    final Icon icon = content.icon;
    final Border border = color.border;

    ui.Color getColor(String value) {
      return getColorSource(value, jsonSource);
    }

    return AppColors(
      colorStateError: getColor(state.error.value),
      colorStateWarning: getColor(state.warning.value),
      colorStateSuccess: getColor(state.success.value),
      colorStateInfo: getColor(state.info.value),
      colorSurfaceCanvas: getColor(surface.canvas.value),
      colorSurfaceSurfaceDefault: getColor(surface.surfaceDefault.value),
      colorSurfaceSurfaceRaised: getColor(surface.surfaceRaised.value),
      colorSurfaceSurfaceDisabled: getColor(surface.surfaceDisabled.value),
      colorSurfaceSurfaceInverse: getColor(surface.surfaceInverse.value),
      colorSurfaceStateSuccess: getColor(surface.state.success.value),
      colorSurfaceStateInfo: getColor(surface.state.info.value),
      colorSurfaceStateError: getColor(surface.state.error.value),
      colorSurfaceStateWarning: getColor(surface.state.warning.value),
      colorSurfaceBrandSurfacePrimary:
          getColor(surface.brand.surfacePrimary.value),
      colorContentTextTitle: getColor(text.title.value),
      colorContentTextHeading: getColor(text.heading.value),
      colorContentTextSubtitle: getColor(text.subtitle.value),
      colorContentTextBody: getColor(text.body.value),
      colorContentTextInfo: getColor(text.info.value),
      colorContentTextCaption: getColor(text.caption.value),
      colorContentTextOverline: getColor(text.overline.value),
      colorContentTextBrand: getColor(text.brand.highlighted.value),
      colorContentTextInverseHeading: getColor(text.inverse.heading.value),
      colorContentTextInverseTitle: getColor(text.inverse.title.value),
      colorContentTextInverseSubtitle: getColor(text.inverse.subtitle.value),
      colorContentTextInverseBody: getColor(text.inverse.body.value),
      colorContentTextInverseInfo: getColor(text.inverse.info.value),
      colorContentTextInverseCaption: getColor(text.inverse.caption.value),
      colorContentTextInverseOverline: getColor(text.inverse.overline.value),
      colorContentTextDisabled: getColor(text.disabled.value),
      colorContentIconDefault: getColor(icon.iconDefault.value),
      colorContentIconBrandPrimary: getColor(icon.brand.primary.value),
      colorContentIconSecondary: getColor(icon.secondary.value),
      colorContentIconInfo: getColor(icon.info.value),
      colorContentIconSuccess: getColor(icon.success.value),
      colorContentIconWarning: getColor(icon.warning.value),
      colorContentIconError: getColor(icon.error.value),
      colorContentIconComplementary: getColor(icon.complementary.value),
      colorContentIconInverse: getColor(icon.inverse.value),
      colorContentIconDisabled: getColor(icon.disabled.value),
      colorBorderDefault: getColor(border.borderDefault.value),
      colorBorderFocused: getColor(border.focused.value),
      colorBorderBrandHighlighted: getColor(border.brand.highlighted.value),
      colorBorderDisabled: getColor(border.disabled.value),
      colorBorderStateInfo: getColor(border.state.info.value),
      colorBorderStateSuccess: getColor(border.state.success.value),
      colorBorderStateWarning: getColor(border.state.warning.value),
      colorBorderStateError: getColor(border.state.error.value),
    );
  }
}
