import 'package:flutter/material.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/json_source/alias_json_source.dart';
import 'package:theme_switch_bloc/ui/global/theme/colors/json_source/primitive_json_source.dart';

/// Retrieves a [Color] from the provided [colorKey] based on the values in [ALIAS_JSON_SOURCE] or [PRIMITIVE_JSON_SOURCE].
///
/// Returns a default transparent color [Color(0x00ffffff)] if the key is invalid or the color is not found.
///
/// [colorKey] Example: "{colors.error.400}" or "{themes.dark.900}"
/// - `colorCategory`, `colorType`, and `colorValue` specify the mapped location of the color within the source.
/// - `{colorCategory.colorType.colorValue}` is equivalent to `{colors.error.400}` or `{themes.dark.900}`.

Color getColorFromJsonSource(String colorKey, Map lightOrDarkSource) {
  try {
    final keys = _parseColorKey(colorKey);
    if (keys == null) return _defaultColor;

    final colorValueString = _getHexValue(keys, lightOrDarkSource);
    if (colorValueString == null) return _defaultColor;

    return _parseHexColor(colorValueString);
  } catch (e) {
    debugPrint(
        '---- Please Resolve ---- Exception in getColorFromJsonSource function: $e');
    return _defaultColor;
  }
}

/// Parses the [colorKey] and returns a list of parts [colorCategory, colorType, colorValue].
List<String>? _parseColorKey(String colorKey) {
  final cleanedKey = colorKey.replaceAll(RegExp(r'[{}]'), '');
  final keys = cleanedKey.split('.');
  return keys.length == 3 ? keys : null;
}

/// Retrieves the color value string from the given list of keys.
String? _getHexValue(List<String> keys, Map lightOrDarkSource) {
  final colorCategory = keys[0];
  final colorType = keys[1];
  final colorValue = keys[2];

  String? hexValue;
  if (PRIMITIVE_JSON_SOURCE.containsKey(colorCategory)) {
    hexValue = _getHexValueFromSource(
        PRIMITIVE_JSON_SOURCE, colorCategory, colorType, colorValue);
  } else if (ALIAS_JSON_SOURCE.containsKey(colorCategory)) {
    final aliasKey = _getHexValueFromSource(
        ALIAS_JSON_SOURCE, colorCategory, colorType, colorValue);
    if (aliasKey != null) {
      final aliasKeys = _parseColorKey(aliasKey);
      if (aliasKeys != null) {
        hexValue = _getHexValueFromSource(
            PRIMITIVE_JSON_SOURCE, aliasKeys[0], aliasKeys[1], aliasKeys[2]);
      }
    }
  } else if (colorCategory == 'color') {
    final sourceKey = _getHexValueFromSource(
        lightOrDarkSource, colorCategory, colorType, colorValue);
    if (sourceKey != null) {
      final sourceKeys = _parseColorKey(sourceKey);
      if (sourceKeys != null) {
        hexValue = _getHexValueFromSource(
            PRIMITIVE_JSON_SOURCE, sourceKeys[0], sourceKeys[1], sourceKeys[2]);
      }
    }
  }
  return hexValue;
}

/// Retrieves the color value string from a specified source.
String? _getHexValueFromSource(
    Map source, String category, String type, String value) {
  return source[category]?[type]?[value]?['value'] as String?;
}

/// Parses a color value string into a [Color].
Color _parseHexColor(String colorValue) {
  final colorHex = colorValue.substring(1); // #FFFFFF --> removing the `#`
  return Color(int.parse('0xff$colorHex'));
}

/// Default transparent color used when no valid color is found or an error occurs.
const _defaultColor = Color(0x00ffffff);

















// String capitalize(String s) => s[0].toUpperCase() + s.substring(1);

// class PrimitiveJsonConverted{
//     Map<String, String> colorMap = {};

//     a(){
//         PRIMITIVE_JSON_SOURCE['colors'].forEach((category, shades) {
//     shades.forEach((shade, details) {
//       String key = 'colors${capitalize(category)}$shade';
//       String value = details['value'];
//       colorMap[key] = value;
//     });
//   });

//   log(colorMap.toString());
//     }


// }


