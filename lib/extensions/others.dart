import 'imports.dart';
import 'common.dart';

//!
extension CenterExt on Center {
  toMap() {
    if (this is Center)
      return {
        'heightFactor': this.heightFactor,
        'widthFactor': this.widthFactor,
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Center(
      heightFactor: jsonMap['heightFactor'],
      widthFactor: jsonMap['widthFactor'],
    );
  }
}

extension OpacityExt on Opacity {
  toMap() {
    if (this is Opacity)
      return {
        'alwaysIncludeSemantics': this.alwaysIncludeSemantics,
        'opacity': this.opacity,
        'child': this.child,
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Opacity(
      alwaysIncludeSemantics: jsonMap['alwaysIncludeSemantics'],
      opacity: jsonMap['opacity'],
      child: jsonMap['child'],
    );
  }
}

extension AlignExt on Align {
  toMap() {
    if (this is Align)
      return {
        'alignment': this.alignment.toMap(),
        'heightFactor': this.heightFactor,
        'widthFactor': this.widthFactor,
        'child': this.child,
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Align(
      alignment: Alignment.center.fromMap(jsonMap['alignment']),
      heightFactor: jsonMap['heightFactor'],
      widthFactor: jsonMap['widthFactor'],
      child: jsonMap['child'],
    );
  }
}

extension PaddingExt on Padding {
  toMap() {
    if (this is Padding)
      return {
        'padding': this.padding,
        'child': this.child,
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Padding(
      padding: jsonMap['padding'],
      child: jsonMap['child'],
    );
  }
}

//!
extension WrapExt on Wrap {
  toMap() {
    if (this is Wrap)
      return {
        'alignment': this.alignment.toMap(),
        'crossAxisAlignment': this.crossAxisAlignment.toMap(),
        'verticalDirection': this.verticalDirection.toMap(),
        'direction': this.direction.toMap(),
        'textDirection': this.textDirection.toMap(),
        'runAlignment': this.runAlignment.toMap(),
        'runSpacing': this.runSpacing,
        'spacing': this.spacing,
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Wrap(
      alignment: alignment.fromMap(jsonMap['alignment']),
      crossAxisAlignment:
          crossAxisAlignment.fromMap(jsonMap['crossAxisAlignment']),
      verticalDirection:
          verticalDirection.fromMap(jsonMap['verticalDirection']),
      direction: direction.fromMap(jsonMap['direction']),
      textDirection: textDirection.fromMap(jsonMap['textDirection']),
      runAlignment: runAlignment.fromMap(jsonMap['runAlignment']),
      runSpacing: jsonMap['runSpacing'],
      spacing: jsonMap['spacing'],
    );
  }
}

//!
extension StackExt on Stack {
  toMap() {
    if (this is Stack)
      return {
        'alignment': this.alignment.toMap(),
        'fit': this.fit.toMap(),
        'overflow': this.overflow.toMap(),
        'textDirection': this.textDirection.toMap(),
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Stack(
      alignment: Alignment.center.fromMap(jsonMap['alignment']),
      fit: StackFit.loose.fromMap(jsonMap['fit']),
      overflow: Overflow.clip.fromMap(jsonMap['overflow']),
      textDirection: TextDirection.ltr.fromMap(jsonMap['textDirection']),
    );
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

//!
extension RowExt on Row {
  toMap() {
    if (this is Row)
      return {
        'crossAxisAlignment': this.crossAxisAlignment.toMap(),
        'direction': this.direction.toMap(),
        'mainAxisAlignment': this.mainAxisAlignment.toMap(),
        'mainAxisSize': this.mainAxisSize.toMap(),
        'verticalDirection': this.verticalDirection.toMap(),
        'textBaseline': this.textBaseline.toMap(),
        'textDirection': this.textDirection.toMap(),
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Row(
      mainAxisAlignment:
          MainAxisAlignment.center.fromMap(jsonMap['mainAxisAlignment']),
      mainAxisSize: MainAxisSize.max.fromMap(jsonMap['mainAxisSize']),
      crossAxisAlignment:
          CrossAxisAlignment.baseline.fromMap(jsonMap['crossAxisAlignment']),
      verticalDirection:
          VerticalDirection.down.fromMap(jsonMap['verticalDirection']),
      textBaseline: TextBaseline.alphabetic.fromMap(jsonMap['textBaseline']),
      textDirection: TextDirection.ltr.fromMap(jsonMap['textDirection']),
    );
  }
}

//!
extension ColumnExt on Column {
  toMap() {
    if (this is Column)
      return {
        'crossAxisAlignment': this.crossAxisAlignment.toMap(),
        'direction': this.direction.toMap(),
        'mainAxisAlignment': this.mainAxisAlignment.toMap(),
        'mainAxisSize': this.mainAxisSize.toMap(),
        'verticalDirection': this.verticalDirection.toMap(),
        'textBaseline': this.textBaseline.toMap(),
        'textDirection': this.textDirection.toMap(),
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Column(
      mainAxisAlignment:
          MainAxisAlignment.center.fromMap(jsonMap['mainAxisAlignment']),
      mainAxisSize: MainAxisSize.max.fromMap(jsonMap['mainAxisSize']),
      crossAxisAlignment:
          CrossAxisAlignment.baseline.fromMap(jsonMap['crossAxisAlignment']),
      verticalDirection:
          VerticalDirection.down.fromMap(jsonMap['verticalDirection']),
      textBaseline: TextBaseline.alphabetic.fromMap(jsonMap['textBaseline']),
      textDirection: TextDirection.ltr.fromMap(jsonMap['textDirection']),
    );
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
