import 'dart:convert';

ColorModel colorModelFromJson(String str) =>
    ColorModel.fromJson(json.decode(str));

String colorModelToJson(ColorModel data) => json.encode(data.toJson());

class ColorModel {
  final Color color;

  ColorModel({
    required this.color,
  });

  factory ColorModel.fromJson(Map<String, dynamic> json) => ColorModel(
        color: Color.fromJson(json["color"]),
      );

  Map<String, dynamic> toJson() => {
        "color": color.toJson(),
      };
}

class Color {
  final State state;
  final Surface surface;
  final Content content;
  final Border border;

  Color({
    required this.state,
    required this.surface,
    required this.content,
    required this.border,
  });

  factory Color.fromJson(Map<String, dynamic> json) => Color(
        state: State.fromJson(json["state"]),
        surface: Surface.fromJson(json["surface"]),
        content: Content.fromJson(json["content"]),
        border: Border.fromJson(json["border"]),
      );

  Map<String, dynamic> toJson() => {
        "state": state.toJson(),
        "surface": surface.toJson(),
        "content": content.toJson(),
        "border": border.toJson(),
      };
}

class Border {
  final Default borderDefault;
  final Default focused;
  final BorderBrand brand;
  final Default disabled;
  final State state;

  Border({
    required this.borderDefault,
    required this.focused,
    required this.brand,
    required this.disabled,
    required this.state,
  });

  factory Border.fromJson(Map<String, dynamic> json) => Border(
        borderDefault: Default.fromJson(json["default"]),
        focused: Default.fromJson(json["focused"]),
        brand: BorderBrand.fromJson(json["brand"]),
        disabled: Default.fromJson(json["disabled"]),
        state: State.fromJson(json["state"]),
      );

  Map<String, dynamic> toJson() => {
        "default": borderDefault.toJson(),
        "focused": focused.toJson(),
        "brand": brand.toJson(),
        "disabled": disabled.toJson(),
        "state": state.toJson(),
      };
}

class Default {
  final String value;
  final Type type;
  final Parent parent;
  final String description;

  Default({
    required this.value,
    required this.type,
    required this.parent,
    required this.description,
  });

  factory Default.fromJson(Map<String, dynamic> json) => Default(
        value: json["value"],
        type: typeValues.map[json["type"]]!,
        parent: parentValues.map[json["parent"]] ?? Parent.BRAND_JUST_GO_LIGHT,
        description: json["description"],
      );

  Map<String, dynamic> toJson() => {
        "value": value,
        "type": typeValues.reverse[type],
        "parent": parentValues.reverse[parent],
        "description": description,
      };
}

enum Parent { BRAND_JUST_GO_LIGHT }

final parentValues =
    EnumValues({"Brand/JustGo/Light": Parent.BRAND_JUST_GO_LIGHT});

enum Type { COLOR }

final typeValues = EnumValues({"color": Type.COLOR});

class BorderBrand {
  final Default highlighted;

  BorderBrand({
    required this.highlighted,
  });

  factory BorderBrand.fromJson(Map<String, dynamic> json) => BorderBrand(
        highlighted: Default.fromJson(json["highlighted"]),
      );

  Map<String, dynamic> toJson() => {
        "highlighted": highlighted.toJson(),
      };
}

class State {
  final Default info;
  final Default success;
  final Default warning;
  final Default error;

  State({
    required this.info,
    required this.success,
    required this.warning,
    required this.error,
  });

  factory State.fromJson(Map<String, dynamic> json) => State(
        info: Default.fromJson(json["info"]),
        success: Default.fromJson(json["success"]),
        warning: Default.fromJson(json["warning"]),
        error: Default.fromJson(json["error"]),
      );

  Map<String, dynamic> toJson() => {
        "info": info.toJson(),
        "success": success.toJson(),
        "warning": warning.toJson(),
        "error": error.toJson(),
      };
}

class Content {
  final Text text;
  final Icon icon;

  Content({
    required this.text,
    required this.icon,
  });

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        text: Text.fromJson(json["text"]),
        icon: Icon.fromJson(json["icon"]),
      );

  Map<String, dynamic> toJson() => {
        "text": text.toJson(),
        "icon": icon.toJson(),
      };
}

class Icon {
  final Default iconDefault;
  final IconBrand brand;
  final Default secondary;
  final Default info;
  final Default success;
  final Default warning;
  final Default error;
  final Default complementary;
  final Default inverse;
  final Default disabled;

  Icon({
    required this.iconDefault,
    required this.brand,
    required this.secondary,
    required this.info,
    required this.success,
    required this.warning,
    required this.error,
    required this.complementary,
    required this.inverse,
    required this.disabled,
  });

  factory Icon.fromJson(Map<String, dynamic> json) => Icon(
        iconDefault: Default.fromJson(json["default"]),
        brand: IconBrand.fromJson(json["brand"]),
        secondary: Default.fromJson(json["secondary"]),
        info: Default.fromJson(json["info"]),
        success: Default.fromJson(json["success"]),
        warning: Default.fromJson(json["warning"]),
        error: Default.fromJson(json["error"]),
        complementary: Default.fromJson(json["complementary"]),
        inverse: Default.fromJson(json["inverse"]),
        disabled: Default.fromJson(json["disabled"]),
      );

  Map<String, dynamic> toJson() => {
        "default": iconDefault.toJson(),
        "brand": brand.toJson(),
        "secondary": secondary.toJson(),
        "info": info.toJson(),
        "success": success.toJson(),
        "warning": warning.toJson(),
        "error": error.toJson(),
        "complementary": complementary.toJson(),
        "inverse": inverse.toJson(),
        "disabled": disabled.toJson(),
      };
}

class IconBrand {
  final Default primary;

  IconBrand({
    required this.primary,
  });

  factory IconBrand.fromJson(Map<String, dynamic> json) => IconBrand(
        primary: Default.fromJson(json["primary"]),
      );

  Map<String, dynamic> toJson() => {
        "primary": primary.toJson(),
      };
}

class Text {
  final Default title;
  final Default heading;
  final Default subtitle;
  final Default body;
  final Default info;
  final Default caption;
  final Default overline;
  final BorderBrand brand;
  final Inverse inverse;
  final Default disabled;

  Text({
    required this.title,
    required this.heading,
    required this.subtitle,
    required this.body,
    required this.info,
    required this.caption,
    required this.overline,
    required this.brand,
    required this.inverse,
    required this.disabled,
  });

  factory Text.fromJson(Map<String, dynamic> json) => Text(
        title: Default.fromJson(json["title"]),
        heading: Default.fromJson(json["heading"]),
        subtitle: Default.fromJson(json["subtitle"]),
        body: Default.fromJson(json["body"]),
        info: Default.fromJson(json["info"]),
        caption: Default.fromJson(json["caption"]),
        overline: Default.fromJson(json["overline"]),
        brand: BorderBrand.fromJson(json["brand"]),
        inverse: Inverse.fromJson(json["inverse"]),
        disabled: Default.fromJson(json["disabled"]),
      );

  Map<String, dynamic> toJson() => {
        "title": title.toJson(),
        "heading": heading.toJson(),
        "subtitle": subtitle.toJson(),
        "body": body.toJson(),
        "info": info.toJson(),
        "caption": caption.toJson(),
        "overline": overline.toJson(),
        "brand": brand.toJson(),
        "inverse": inverse.toJson(),
        "disabled": disabled.toJson(),
      };
}

class Inverse {
  final Default heading;
  final Default title;
  final Default subtitle;
  final Default body;
  final Default info;
  final Default caption;
  final Default overline;

  Inverse({
    required this.heading,
    required this.title,
    required this.subtitle,
    required this.body,
    required this.info,
    required this.caption,
    required this.overline,
  });

  factory Inverse.fromJson(Map<String, dynamic> json) => Inverse(
        heading: Default.fromJson(json["heading"]),
        title: Default.fromJson(json["title"]),
        subtitle: Default.fromJson(json["subtitle"]),
        body: Default.fromJson(json["body"]),
        info: Default.fromJson(json["info"]),
        caption: Default.fromJson(json["caption"]),
        overline: Default.fromJson(json["overline"]),
      );

  Map<String, dynamic> toJson() => {
        "heading": heading.toJson(),
        "title": title.toJson(),
        "subtitle": subtitle.toJson(),
        "body": body.toJson(),
        "info": info.toJson(),
        "caption": caption.toJson(),
        "overline": overline.toJson(),
      };
}

class Surface {
  final Default canvas;
  final Default surfaceDefault;
  final Default surfaceRaised;
  final Default surfaceDisabled;
  final State state;
  final Default surfaceInverse;
  final SurfaceBrand brand;

  Surface({
    required this.canvas,
    required this.surfaceDefault,
    required this.surfaceRaised,
    required this.surfaceDisabled,
    required this.state,
    required this.surfaceInverse,
    required this.brand,
  });

  factory Surface.fromJson(Map<String, dynamic> json) => Surface(
        canvas: Default.fromJson(json["canvas"]),
        surfaceDefault: Default.fromJson(json["surface-default"]),
        surfaceRaised: Default.fromJson(json["surface-raised"]),
        surfaceDisabled: Default.fromJson(json["surface-disabled"]),
        state: State.fromJson(json["state"]),
        surfaceInverse: Default.fromJson(json["surface-inverse"]),
        brand: SurfaceBrand.fromJson(json["brand"]),
      );

  Map<String, dynamic> toJson() => {
        "canvas": canvas.toJson(),
        "surface-default": surfaceDefault.toJson(),
        "surface-raised": surfaceRaised.toJson(),
        "surface-disabled": surfaceDisabled.toJson(),
        "state": state.toJson(),
        "surface-inverse": surfaceInverse.toJson(),
        "brand": brand.toJson(),
      };
}

class SurfaceBrand {
  final Default surfacePrimary;

  SurfaceBrand({
    required this.surfacePrimary,
  });

  factory SurfaceBrand.fromJson(Map<String, dynamic> json) => SurfaceBrand(
        surfacePrimary: Default.fromJson(json["surface-primary"]),
      );

  Map<String, dynamic> toJson() => {
        "surface-primary": surfacePrimary.toJson(),
      };
}

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
