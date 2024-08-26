import 'dart:convert';

PrimitiveColorsModel primitiveColorsFromJson(String str) =>
    PrimitiveColorsModel.fromJson(json.decode(str));

String primitiveColorsToJson(PrimitiveColorsModel data) =>
    json.encode(data.toJson());

class PrimitiveColorsModel {
  final Colors colors;
  final Map<String, Dimension> dimensions;

  PrimitiveColorsModel({
    required this.colors,
    required this.dimensions,
  });

  factory PrimitiveColorsModel.fromJson(Map<String, dynamic> json) =>
      PrimitiveColorsModel(
        colors: Colors.fromJson(json["colors"]),
        dimensions: Map.from(json["dimensions"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "colors": colors.toJson(),
        "dimensions": Map.from(dimensions)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Colors {
  final Map<String, Dimension> dark;
  final Map<String, Dimension> neutral;
  final Map<String, Dimension> complementary;
  final Map<String, Dimension> error;
  final Map<String, Dimension> warning;
  final Map<String, Dimension> info;
  final Map<String, Dimension> secondary;
  final Map<String, Dimension> primary;
  final Map<String, Dimension> base;

  Colors({
    required this.dark,
    required this.neutral,
    required this.complementary,
    required this.error,
    required this.warning,
    required this.info,
    required this.secondary,
    required this.primary,
    required this.base,
  });

  factory Colors.fromJson(Map<String, dynamic> json) => Colors(
        dark: Map.from(json["dark"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        neutral: Map.from(json["neutral"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        complementary: Map.from(json["complementary"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        error: Map.from(json["error"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        warning: Map.from(json["warning"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        info: Map.from(json["info"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        secondary: Map.from(json["secondary"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        primary: Map.from(json["primary"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
        base: Map.from(json["base"]).map(
            (k, v) => MapEntry<String, Dimension>(k, Dimension.fromJson(v))),
      );

  Map<String, dynamic> toJson() => {
        "dark": Map.from(dark)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "neutral": Map.from(neutral)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "complementary": Map.from(complementary)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "error": Map.from(error)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "warning": Map.from(warning)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "info": Map.from(info)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "secondary": Map.from(secondary)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "primary": Map.from(primary)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
        "base": Map.from(base)
            .map((k, v) => MapEntry<String, dynamic>(k, v.toJson())),
      };
}

class Dimension {
  final String value;
  final Type type;
  final Parent parent;
  final String description;

  Dimension({
    required this.value,
    required this.type,
    required this.parent,
    required this.description,
  });

  factory Dimension.fromJson(Map<String, dynamic> json) => Dimension(
        value: json["value"],
        type: typeValues.map[json["type"]]!,
        parent: parentValues.map[json["parent"]]!,
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "type": typeValues.reverse[type],
        "parent": parentValues.reverse[parent],
        "description": description,
      };
}

enum Parent { PRIMITIVES_DEFAULT }

final parentValues =
    EnumValues({"Primitives/default": Parent.PRIMITIVES_DEFAULT});

enum Type { COLOR, DIMENSION }

final typeValues =
    EnumValues({"color": Type.COLOR, "dimension": Type.DIMENSION});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
