import 'dart:convert';
import 'package:flutter/material.dart';

import 'utils.dart';

extension ColorExt on Color {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is Color)
      return {
        'value': this.value,
      };
    return null;
  }

  Color fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return Color(
      jsonMap['value'],
    );
  }

  Color fromMap(dynamic jsonMap) {
    // var jsonMap = json.decode(jsonStr);
    if (jsonMap == null) return null;
    return Color(
      jsonMap['value'],
    );
  }
}

extension AlignmentExt on AlignmentGeometry {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is Alignment)
      return {
        'x': (this as Alignment).x,
        'y': (this as Alignment).y,
      };
    return null;
  }

  Alignment fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return Alignment(jsonMap['x'], jsonMap['y']);
  }

  Alignment fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Alignment(jsonMap['x'], jsonMap['y']);
  }
}

extension TextBaselineExt on TextBaseline {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  TextBaseline fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return TextBaseline.values[jsonMap['index']];
  }

  TextBaseline fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextBaseline.values[jsonMap['index']];
  }
}

extension TextDirectionExt on TextDirection {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  TextDirection fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return TextDirection.values[jsonMap['index']];
  }

  TextDirection fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextDirection.values[jsonMap['index']];
  }
}

extension BrightnessExt on Brightness {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  Brightness fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return Brightness.values[jsonMap['index']];
  }

  Brightness fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Brightness.values[jsonMap['index']];
  }
}

extension DurationExt on Duration {
  toMap() {
    if (this is Duration)
      return {
        'inMilliseconds': this.inMilliseconds,
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Duration(milliseconds: jsonMap['inMilliseconds']);
  }
}

extension EdgeInsetsExt on EdgeInsetsGeometry {
  String toJson() {
    return null;
  }

  Map toMap() {
    if (this is EdgeInsets)
      return {
        'top': (this as EdgeInsets).top,
        'bottom': (this as EdgeInsets).bottom,
        'left': (this as EdgeInsets).left,
        'right': (this as EdgeInsets).right,
      };
    return null;
  }

  EdgeInsets fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return EdgeInsets.fromLTRB(
      jsonMap['left'],
      jsonMap['top'],
      jsonMap['right'],
      jsonMap['bottom'],
    );
  }

  EdgeInsets fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return EdgeInsets.fromLTRB(
      jsonMap['left'],
      jsonMap['top'],
      jsonMap['right'],
      jsonMap['bottom'],
    );
  }
}

extension MaterialTapTargetSizeExt on MaterialTapTargetSize {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  MaterialTapTargetSize fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return MaterialTapTargetSize.values[jsonMap['index']];
  }

  MaterialTapTargetSize fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return MaterialTapTargetSize.values[jsonMap['index']];
  }
}

extension ClipExt on Clip {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  Clip fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return Clip.values[jsonMap['index']];
  }

  Clip fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Clip.values[jsonMap['index']];
  }
}

extension ButtonTextThemeExt on ButtonTextTheme {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  ButtonTextTheme fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return ButtonTextTheme.values[jsonMap['index']];
  }

  ButtonTextTheme fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return ButtonTextTheme.values[jsonMap['index']];
  }
}

extension BorderRadiusGeometryExt on BorderRadiusGeometry {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is BorderRadius)
      return {
        'topRight': (this as BorderRadius).topRight.toMap(),
        'topLeft': (this as BorderRadius).topLeft.toMap(),
        'bottomLeft': (this as BorderRadius).bottomLeft.toMap(),
        'bottomRight': (this as BorderRadius).bottomRight.toMap(),
      };
    return null;
  }

  BorderRadiusGeometry fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return BorderRadius.only(
      topLeft: Radius.zero.fromJson(jsonMap['topLeft']),
      topRight: Radius.zero.fromJson(jsonMap['topRight']),
      bottomLeft: Radius.zero.fromJson(jsonMap['bottomLeft']),
      bottomRight: Radius.zero.fromJson(jsonMap['bottomRight']),
    );
  }

  BorderRadiusGeometry fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return BorderRadius.only(
      topLeft: Radius.zero.fromMap(jsonMap['topLeft']),
      topRight: Radius.zero.fromMap(jsonMap['topRight']),
      bottomLeft: Radius.zero.fromMap(jsonMap['bottomLeft']),
      bottomRight: Radius.zero.fromMap(jsonMap['bottomRight']),
    );
  }
}

extension RadiusExt on Radius {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is Radius)
      return {
        'x': this.x,
        'y': this.y,
      };
    return null;
  }

  Radius fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return Radius.elliptical(jsonMap['x'], jsonMap['y']);
  }

  Radius fromMap(dynamic jsonMap) {
    return Radius.elliptical(jsonMap['x'], jsonMap['y']);
  }
}

extension AxisExt on Axis {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  Axis fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return Axis.values[jsonMap['index']];
  }

  Axis fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Axis.values[jsonMap['index']];
  }
}

extension MainAxisAlignmentExt on MainAxisAlignment {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  MainAxisAlignment fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return MainAxisAlignment.values[jsonMap['index']];
  }

  MainAxisAlignment fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return MainAxisAlignment.values[jsonMap['index']];
  }
}

extension MainAxisSizeExt on MainAxisSize {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  MainAxisSize fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return MainAxisSize.values[jsonMap['index']];
  }

  MainAxisSize fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return MainAxisSize.values[jsonMap['index']];
  }
}

extension CrossAxisAlignmentExt on CrossAxisAlignment {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  CrossAxisAlignment fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return CrossAxisAlignment.values[jsonMap['index']];
  }

  CrossAxisAlignment fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return CrossAxisAlignment.values[jsonMap['index']];
  }
}

extension WrapCrossAlignmentExt on WrapCrossAlignment {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  WrapCrossAlignment fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return WrapCrossAlignment.values[jsonMap['index']];
  }

  WrapCrossAlignment fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return WrapCrossAlignment.values[jsonMap['index']];
  }
}

extension WrapAlignmentExt on WrapAlignment {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  WrapAlignment fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return WrapAlignment.values[jsonMap['index']];
  }

  WrapAlignment fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return WrapAlignment.values[jsonMap['index']];
  }
}

extension VerticalDirectionExt on VerticalDirection {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  VerticalDirection fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return VerticalDirection.values[jsonMap['index']];
  }

  VerticalDirection fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return VerticalDirection.values[jsonMap['index']];
  }
}

extension StackFitExt on StackFit {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  StackFit fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return StackFit.values[jsonMap['index']];
  }

  StackFit fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return StackFit.values[jsonMap['index']];
  }
}

extension OverflowExt on Overflow {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  Overflow fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return Overflow.values[jsonMap['index']];
  }

  Overflow fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Overflow.values[jsonMap['index']];
  }
}

extension RRectExt on RRect {
  toMap() {
    if (this is RRect)
      return {
        'left': this.left,
        'top': this.top,
        'right': this.right,
        'bottom': this.bottom,
        'tlRadius': this.tlRadius.toMap(),
        'trRadius': this.trRadius.toMap(),
        'brRadius': this.brRadius.toMap(),
        'blRadius': this.blRadius.toMap(),
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return RRect.fromLTRBAndCorners(
      jsonMap['left'],
      jsonMap['top'],
      jsonMap['right'],
      jsonMap['bottom'],
      topLeft: Radius.zero.fromMap(jsonMap['tlRadius']),
      topRight: Radius.zero.fromMap(jsonMap['trRadius']),
      bottomRight: Radius.zero.fromMap(jsonMap['brRadius']),
      bottomLeft: Radius.zero.fromMap(jsonMap['blRadius']),
    );
  }
}

extension DecorationExt on Decoration {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is BoxDecoration)
      return {
        'color': (this as BoxDecoration).color.toMap(),
        'border': (this as BoxDecoration).border.toMap(),
        'backgroundBlendMode':
            (this as BoxDecoration).backgroundBlendMode.toMap(),
        'borderRadius': (this as BoxDecoration).borderRadius.toMap(),
        'shape': (this as BoxDecoration).shape.toMap(),
        'image': (this as BoxDecoration).image.toMap(),
      };
    return null;
  }

  BoxDecoration fromJson(String jsonStr) {
    Map<String, String> jsonMap = json.decode(jsonStr);
    return BoxDecoration(
      color: Color(0).fromJson(jsonMap['color']),
      border: Border().fromJson(jsonMap['border']),
      backgroundBlendMode:
          BlendMode.clear.fromJson(jsonMap['backgroundBlendMode']),
      borderRadius:
          BorderRadius.all(Radius.zero).fromJson(jsonMap['borderRadius']),
      shape: BoxShape.rectangle.fromJson(jsonMap['shape']),
      image: DecorationImage(image: AssetImage('')).fromJson(jsonMap['image']),
    );
  }

  BoxDecoration fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return BoxDecoration(
      color: Color(0).fromMap(jsonMap['color']),
      border: Border().fromMap(jsonMap['border']),
      backgroundBlendMode:
          BlendMode.clear.fromMap(jsonMap['backgroundBlendMode']),
      borderRadius:
          BorderRadius.all(Radius.zero).fromMap(jsonMap['borderRadius']),
      shape: BoxShape.rectangle.fromMap(jsonMap['shape']),
      image: DecorationImage(image: AssetImage('')).fromMap(jsonMap['image']),
    );
  }
}

extension DecorationImageExt on DecorationImage {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is DecorationImage)
      return {
        'image': this.image.toJson(),
      };
    return null;
  }

  DecorationImage fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return DecorationImage(
        image: AssetImage('').fromJson(jsonMap[image] as String));
  }

  DecorationImage fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return DecorationImage(
        image: AssetImage('').fromJson(jsonMap[image] as String));
  }
}

extension ImageProviderExt on ImageProvider {
  String toJson() {
    if (this is AssetImage)
      return json.encode({
        'assetName': (this as AssetImage).assetName,
      });
    return null;
  }

  ImageProvider fromJson(String jsonStr) {
    Map<String, String> jsonMap = json.decode(jsonStr);
    return AssetImage(jsonMap['assetName']);
  }

  ImageProvider fromMap(dynamic jsonMap) {
    return AssetImage(jsonMap['assetName']);
  }
}

extension BoxShapeExt on BoxShape {
  Map toMap() {
    return {
      'index': this.index,
    };
  }

  String toJson() {
    return json.encode(this.toMap());
  }

  BoxShape fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return BoxShape.values[jsonMap['index']];
  }

  BoxShape fromMap(dynamic jsonMap) {
    return BoxShape.values[jsonMap['index']];
  }
}

extension BlendModeExt on BlendMode {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is BlendMode)
      return {
        'index': this.index,
      };
    return null;
  }

  BlendMode fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return BlendMode.values[jsonMap['index']];
  }

  BlendMode fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return BlendMode.values[jsonMap['index']];
  }
}

extension BoxBorderExt on BoxBorder {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    if (this is Border)
      return {
        'top': (this as Border).top.toMap(),
        'bottom': (this as Border).bottom.toMap(),
        'left': (this as Border).left.toMap(),
        'right': (this as Border).right.toMap(),
      };
    return null;
  }

  BoxBorder fromJson(String jsonStr) {
    Map<String, String> jsonMap = json.decode(jsonStr);
    return Border(
      top: BorderSide().fromJson(jsonMap['top']),
      bottom: BorderSide().fromJson(jsonMap['bottom']),
      left: BorderSide().fromJson(jsonMap['left']),
      right: BorderSide().fromJson(jsonMap['right']),
    );
  }

  BoxBorder fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Border(
      top: BorderSide().fromMap(jsonMap['top']),
      bottom: BorderSide().fromMap(jsonMap['bottom']),
      left: BorderSide().fromMap(jsonMap['left']),
      right: BorderSide().fromMap(jsonMap['right']),
    );
  }
}

extension BorderSideExt on BorderSide {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'color': this.color.toMap(),
      'width': this.width,
      'style': this.style.toMap(),
    };
  }

  BorderSide fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return BorderSide(
      color: Color(0).fromJson(jsonMap['color'] as String),
      width: jsonMap['width'],
      style: BorderStyle.none.fromJson(jsonMap['style']),
    );
  }

  BorderSide fromMap(dynamic jsonMap) {
    return BorderSide(
      color: Color(0).fromMap(jsonMap['color']),
      width: jsonMap['width'],
      style: BorderStyle.none.fromMap(jsonMap['style']),
    );
  }
}

extension BorderStyleExt on BorderStyle {
  String toJson() {
    return json.encode(this.toMap());
  }

  Map toMap() {
    return {
      'index': this.index,
    };
  }

  BorderStyle fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return BorderStyle.values[jsonMap['index']];
  }

  BorderStyle fromMap(dynamic jsonMap) {
    return BorderStyle.values[jsonMap['index']];
  }
}

extension BoxConstraintsExt on BoxConstraints {
  String toJson() {
    return json.encode(this.toMap());
  }

  BoxConstraints fromJson(String jsonStr) {
    var jsonMap = json.decode(jsonStr);
    return BoxConstraints(
      maxHeight: toDoubleorInfinite(jsonMap['maxHeight']),
      maxWidth: toDoubleorInfinite(jsonMap['maxWidth']),
      minHeight: toDoubleorInfinite(jsonMap['minHeight']),
      minWidth: toDoubleorInfinite(jsonMap['minWidth']),
    );
  }

  BoxConstraints fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return BoxConstraints(
      maxHeight: toDoubleorInfinite(jsonMap['maxHeight']),
      maxWidth: toDoubleorInfinite(jsonMap['maxWidth']),
      minHeight: toDoubleorInfinite(jsonMap['minHeight']),
      minWidth: toDoubleorInfinite(jsonMap['minWidth']),
    );
  }

  Map toMap() {
    if (this == null) return null;
    return {
      'maxHeight': this.maxHeight.checkInfinity(),
      'maxWidth': this.maxWidth.checkInfinity(),
      'minHeight': this.minHeight.checkInfinity(),
      'minWidth': this.minWidth.checkInfinity(),
    };
  }
}
