import 'imports.dart';
import 'common.dart';

extension TextExt on Text {
  Map toMap() {
    return {
      "data": this.data,
      "maxLines": this.maxLines,
      "textScaleFactor": this.textScaleFactor,
      "softWrap": this.softWrap,
      "semanticsLabel": this.semanticsLabel,
      "locale": this.locale.toMap(),
      "style": this.style.toMap(),
      "textWidthBasis": this.textWidthBasis.toMap(),
      "overflow": this.overflow.toMap(),
      "strutStyle": this.strutStyle.toMap(),
      "textAlign": this.textAlign.toMap(),
      "textDirection": this.textDirection.toMap(),

      ///TODO: Implement Ext func
      // "textSpan": this.textSpan
    };
  }

  Text fromMap(dynamic jsonMap) {
    return Text(
      jsonMap['data'],
      maxLines: jsonMap['maxLines'],
      textScaleFactor: jsonMap['textScaleFactor'],
      softWrap: jsonMap['softWrap'],
      semanticsLabel: jsonMap['semanticsLabel'],
      locale: Locale('En').fromMap(jsonMap['locale']),
      style: TextStyle().fromMap(jsonMap['style']),
      textWidthBasis: TextWidthBasis.parent.fromMap(jsonMap['textWidthBasis']),
      overflow: TextOverflow.visible.fromMap(jsonMap['overflow']),
      strutStyle: StrutStyle().fromMap(jsonMap['strutStyle']),
      textAlign: TextAlign.start.fromMap(jsonMap['textAlign']),
      textDirection: TextDirection.ltr.fromMap(jsonMap['textDirection']),

      ///TODO: Implement Ext func
      // "textSpan": this.textSpan
    );
  }
}

extension TextOverflowExt on TextOverflow {
  toMap() {
    if (this is TextOverflow) return {'index': this.index};
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextOverflow.values[jsonMap['index']];
  }
}

extension StrutStyleExt on StrutStyle {
  toMap() {
    if (this is StrutStyle)
      return {
        'debugLabel': this.debugLabel,
        'fontFamily': this.fontFamily,
        'fontSize': this.fontSize,
        'fontStyle': this.fontStyle.toMap(),
        'fontWeight': this.fontWeight.toMap(),
        'forceStrutHeight': this.forceStrutHeight,
        'height': this.height,
        'leading': this.leading,
      };
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return StrutStyle(
      debugLabel: jsonMap['debugLabel'],
      fontFamily: jsonMap['fontFamily'],
      fontSize: jsonMap['fontSize'],
      fontStyle: FontStyle.normal.fromMap(jsonMap['fontStyle']),
      fontWeight: FontWeight.normal.fromMap(jsonMap['fontWeight']),
      forceStrutHeight: jsonMap['forceStrutHeight'],
      height: jsonMap['height'],
      leading: jsonMap['leading'],
    );
  }
}

extension TextWidthBasisExt on TextWidthBasis {
  toMap() {
    if (this is TextWidthBasis) return {'index': this.index};
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextWidthBasis.values[jsonMap['index']];
  }
}

extension TextAlignExt on TextAlign {
  toMap() {
    if (this is TextAlign) return {'index': this.index};
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextAlign.values[jsonMap['index']];
  }
}

extension TextDirectionExt on TextDirection {
  toMap() {
    if (this is TextDirection) return {'index': this.index};
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextDirection.values[jsonMap['index']];
  }
}

extension TextSpanExt on TextSpan {
  toMap() {
    if (this is TextSpan)
      return {
        'text': this.text,
        'style': this.style.toMap(),
        'semanticsLabel': this.semanticsLabel,
        'children': this.children.toMap(),
      };
    return null;
  }

  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return TextSpan(
      text: jsonMap['text'],
      semanticsLabel: jsonMap['semanticsLabel'],
      style: TextStyle().fromMap(jsonMap['style']),
    );
  }
}

extension TextStyleExt on TextStyle {
  fromMap(jsonMap) {
    if (jsonMap == null) return null;
    return TextStyle(
      height: jsonMap['height'],
      letterSpacing: jsonMap['letterSpacing'],
      wordSpacing: jsonMap['wordSpacing'],
      debugLabel: jsonMap['debugLabel'],
      inherit: jsonMap['inherit'],
      fontFamily: jsonMap['fontFamily'],
      fontSize: jsonMap['fontSize'],
      decorationThickness: jsonMap['decorationThickness'],
      locale: Locale.cachedLocale.fromMap(jsonMap['locale']),
      backgroundColor: Color(0).fromMap(jsonMap['backgroundColor']),
      color: Color(0).fromMap(jsonMap['color']),
      decorationColor: Color(0).fromMap(jsonMap['decorationColor']),
      decoration: TextDecoration.none.fromMap(jsonMap['decoration']),
      decorationStyle:
          TextDecorationStyle.solid.fromMap(jsonMap['decorationStyle']),
      fontStyle: FontStyle.normal.fromMap(jsonMap['fontStyle']),
      fontWeight: FontWeight.normal.fromMap(jsonMap['fontWeight']),
      shadows: [Shadow].fromMap(jsonMap['shadows']),
      textBaseline: TextBaseline.alphabetic.fromMap(jsonMap['textBaseline']),
    );
  }

  toMap() {
    if (this is TextStyle)
      return {
        'height': this.height,
        'letterSpacing': this.letterSpacing,
        'wordSpacing': this.wordSpacing,
        'debugLabel': this.debugLabel,
        'inherit': this.inherit,
        'fontFamily': this.fontFamily,
        'fontSize': this.fontSize,
        'decorationThickness': this.decorationThickness,
        'locale': this.locale.toMap(),
        'backgroundColor': this.backgroundColor.toMap(),
        'color': this.color.toMap(),
        'decorationColor': this.decorationColor.toMap(),

        ///TODO: Implement Paint Extensions
        // 'background': this.background,
        // 'foreground': this.foreground,
        'decoration': this.decoration.toMap(),
        'decorationStyle': this.decorationStyle.toMap(),
        'fontStyle': this.fontStyle.toMap(),
        'fontWeight': this.fontWeight.toMap(),
        'shadows': this.shadows.toMap(),
        'textBaseline': this.textBaseline.toMap(),
      };
    return null;
  }
}

extension TextDecorationExt on TextDecoration {
  toMap() {
    if (this is TextDecoration) {
      List<String> decors = [];
      if (this.contains(TextDecoration.lineThrough)) {
        decors.add('lineThrough');
      }
      if (this.contains(TextDecoration.overline)) {
        decors.add('overline');
      }
      if (this.contains(TextDecoration.underline)) {
        decors.add('underline');
      }
      return decors;
    }
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    if (jsonMap is List) {
      List<TextDecoration> decors = [];
      jsonMap.forEach((f) {
        switch (f) {
          case 'lineThrough':
            decors.add(TextDecoration.lineThrough);
            break;
          case 'overline':
            decors.add(TextDecoration.overline);
            break;
          case 'underline':
            decors.add(TextDecoration.underline);
            break;
          default:
        }
      });
      return TextDecoration.combine(decors);
    }
  }
}

extension TextDecorationStyleExt on TextDecorationStyle {
  toMap() {
    if (this is TextDecorationStyle) return {'index': this.index};
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextDecorationStyle.values[jsonMap['index']];
  }
}

extension FontStyleExt on FontStyle {
  toMap() {
    if (this is FontStyle) return {'index': this.index};
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return FontStyle.values[jsonMap['index']];
  }
}

extension FontWeightExt on FontWeight {
  toMap() {
    if (this is FontWeight) return {'index': this.index};
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return FontWeight.values[jsonMap['index']];
  }
}

extension ListExt on List {
  toMap() {
    if (this is List) {
      List<Map> mapsList = [];
      this.forEach((f) {
        if (f is Shadow) mapsList.add(f.toMap());
        // if (f is InlineSpan) mapsList.add(f.toMap());
      });
      return mapsList;
    }
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    List<Shadow> shadows = [];
    if (jsonMap is List) {
      jsonMap.forEach((f) {
        shadows.add(Shadow().fromMap(f));
      });
    }
    return shadows;
  }
}

// extension InlineSpanExt on InlineSpan {
//   toMap() {
//     if (this is InlineSpan)
//       return {
//         'style': this.style.toMap(),
//       };
//     return null;
//   }

//   fromMap(jsonMap) {
//     if (jsonMap == null) return null;
//       return null;
//   }
// }

extension ShadowExt on Shadow {
  toMap() {
    if (this is Shadow)
      return {
        'blurRadius': this.blurRadius,
        'color': this.color.toMap(),
        'offset': this.offset.toMap(),
      };
    return null;
  }

  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Shadow(
      color: Color(0).fromMap(jsonMap['color']),
      blurRadius: jsonMap['blurRadius'],
      offset: Offset(0, 0).fromMap(jsonMap['offset']),
    );
  }
}

extension OffsetExt on Offset {
  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Offset(
      jsonMap['dx'],
      jsonMap['dy'],
    );
  }

  toMap() {
    if (this is Offset)
      return {
        'dx': this.dx,
        'dy': this.dy,
      };
    return null;
  }
}

extension TextBaselineExt on TextBaseline {
  fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return TextBaseline.values[jsonMap['index']];
  }

  toMap() {
    if (this is TextBaseline) return {'index': this.index};
    return null;
  }
}

extension LocaleExt on Locale {
  toMap() {
    if (this is Locale)
      return {
        'countryCode': this.countryCode,
        'languageCode': this.languageCode,
        'scriptCode': this.scriptCode,
      };
    return null;
  }

  Locale fromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    return Locale.fromSubtags(
      languageCode: jsonMap['languageCode'],
      scriptCode: jsonMap['scriptCode'],
      countryCode: jsonMap['countryCode'],
    );
  }
}
