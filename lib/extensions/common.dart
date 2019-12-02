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
