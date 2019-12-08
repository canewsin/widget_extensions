import 'imports.dart';

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