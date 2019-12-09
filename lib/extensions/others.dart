import 'imports.dart';
import 'common.dart';

extension CenterExt on Center {
  toMap() {
    if (this is Center)
      return {
        'Center': {
          'heightFactor': this.heightFactor,
          'widthFactor': this.widthFactor,
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Center(
      heightFactor: jsonMap['heightFactor'],
      widthFactor: jsonMap['widthFactor'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}

extension OpacityExt on Opacity {
  toMap() {
    if (this is Opacity)
      return {
        'Opacity': {
          'alwaysIncludeSemantics': this.alwaysIncludeSemantics,
          'opacity': this.opacity,
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Opacity(
      alwaysIncludeSemantics: jsonMap['alwaysIncludeSemantics'],
      opacity: jsonMap['opacity'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}

extension AlignExt on Align {
  toMap() {
    if (this is Align)
      return {
        'Align': {
          'alignment': this.alignment.toMap(),
          'heightFactor': this.heightFactor,
          'widthFactor': this.widthFactor,
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Align(
      alignment: Alignment.center.fromMap(jsonMap['alignment']),
      heightFactor: jsonMap['heightFactor'],
      widthFactor: jsonMap['widthFactor'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}

extension PaddingExt on Padding {
  toMap() {
    if (this is Padding)
      return {
        'Padding': {
          'padding': this.padding,
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Padding(
      padding: jsonMap['padding'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}

extension WrapExt on Wrap {
  toMap() {
    if (this is Wrap)
      return {
        'Wrap': {
          'alignment': this.alignment.toMap(),
          'crossAxisAlignment': this.crossAxisAlignment.toMap(),
          'verticalDirection': this.verticalDirection.toMap(),
          'direction': this.direction.toMap(),
          'textDirection': this.textDirection.toMap(),
          'runAlignment': this.runAlignment.toMap(),
          'runSpacing': this.runSpacing,
          'spacing': this.spacing,
          'children': this.children.toMap(),
        }
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
      children: [].wgtFromMap(jsonMap['children']),
    );
  }
}

extension StackExt on Stack {
  toMap() {
    if (this is Stack)
      return {
        'Stack': {
          'alignment': this.alignment.toMap(),
          'fit': this.fit.toMap(),
          'overflow': this.overflow.toMap(),
          'textDirection': this.textDirection.toMap(),
          'children': this.children.toMap(),
        }
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
      children: [].wgtFromMap(jsonMap['children']),
    );
  }
}

extension RowExt on Row {
  toMap() {
    if (this is Row)
      return {
        'Row': {
          'crossAxisAlignment': this.crossAxisAlignment.toMap(),
          'direction': this.direction.toMap(),
          'mainAxisAlignment': this.mainAxisAlignment.toMap(),
          'mainAxisSize': this.mainAxisSize.toMap(),
          'verticalDirection': this.verticalDirection.toMap(),
          'textBaseline': this.textBaseline.toMap(),
          'textDirection': this.textDirection.toMap(),
          'children': this.children.toMap(),
        }
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
      children: [].wgtFromMap(jsonMap['children']),
    );
  }
}

extension ColumnExt on Column {
  toMap() {
    if (this is Column)
      return {
        'Column': {
          'crossAxisAlignment': this.crossAxisAlignment.toMap(),
          'direction': this.direction.toMap(),
          'mainAxisAlignment': this.mainAxisAlignment.toMap(),
          'mainAxisSize': this.mainAxisSize.toMap(),
          'verticalDirection': this.verticalDirection.toMap(),
          'textBaseline': this.textBaseline.toMap(),
          'textDirection': this.textDirection.toMap(),
          'children': this.children.toMap(),
        }
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
      children: [].wgtFromMap(jsonMap['children']),
    );
  }
}

extension PlaceholderExt on Placeholder {
  toMap() {
    if (this is Placeholder)
      return {
        'Placeholder': {
          'fallbackHeight': this.fallbackHeight,
          'fallbackWidth': this.fallbackWidth,
          'strokeWidth': this.strokeWidth,
          'color': this.color.toMap(),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Placeholder(
      fallbackHeight: jsonMap['fallbackHeight'],
      fallbackWidth: jsonMap['fallbackWidth'],
      strokeWidth: jsonMap['strokeWidth'],
      color: Color(0).fromMap(jsonMap['color']),
    );
  }
}

extension ExpandedExt on Expanded {
  toMap() {
    if (this is Expanded)
      return {
        'Expanded': {
          'flex': this.flex,
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return Expanded(
      flex: jsonMap['flex'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}

extension AspectRatioExt on AspectRatio {
  toMap() {
    if (this is AspectRatio)
      return {
        'AspectRatio': {
          'aspectRatio': this.aspectRatio,
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return AspectRatio(
      aspectRatio: jsonMap['aspectRatio'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}

extension SizedBoxExt on SizedBox {
  toMap() {
    if (this is SizedBox)
      return {
        'SizedBox': {
          'height': this.height,
          'width': this.width,
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return SizedBox(
      height: jsonMap['height'],
      width: jsonMap['width'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}

extension ClipRRectExt on ClipRRect {
  toMap() {
    if (this is ClipRRect)
      return {
        'ClipRRect': {
          'borderRadius': this.borderRadius.toMap(),
          'clipBehavior': this.clipBehavior.toMap(),
          // 'clipper': (this.clipper as RRectCustomClipper).toMap(),
          'child': Utils.toMap(this.child),
        }
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return ClipRRect(
      borderRadius: BorderRadius.zero.fromMap(jsonMap['borderRadius']),
      clipBehavior: Clip.none.fromMap(jsonMap['clipBehavior']),
      clipper: RRectCustomClipper(jsonMap['clipper']),
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}
