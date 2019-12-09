import 'imports.dart';
import 'common.dart';

//!
extension RaisedButtonExt on RaisedButton {
  toMap() {
    if (this is RaisedButton)
      return {
        'autofocus': this.autofocus,
        'disabledElevation': this.disabledElevation,
        'elevation': this.elevation,
        'focusElevation': this.focusElevation,
        'highlightElevation': this.highlightElevation,
        'hoverElevation': this.hoverElevation,
        'colorBrightness': this.colorBrightness.toMap(),
        'animationDuration': this.animationDuration.toMap(),
        'color': this.color.toMap(),
        'disabledColor': this.disabledColor.toMap(),
        'disabledTextColor': this.disabledTextColor.toMap(),
        'focusColor': this.focusColor.toMap(),
        'highlightColor': this.highlightColor.toMap(),
        'hoverColor': this.hoverColor.toMap(),
        'splashColor': this.splashColor.toMap(),
        'textColor': this.textColor.toMap(),
        'padding': this.padding.toMap(),
        'textTheme': this.textTheme.toMap(),
        'clipBehavior': this.clipBehavior.toMap(),
        'materialTapTargetSize': this.materialTapTargetSize.toMap(),
        'child': Utils.toMap(this.child),
        // 'shape': this.shape,
        // 'focusNode': this.focusNode,
        // 'onHighlightChanged': this.onHighlightChanged,
        // 'onLongPress': this.onLongPress,
        'onPressed': this.onPressed,
      };
    return null;
  }

  fromMap(jsonMap) {
    return RaisedButton(
      autofocus: jsonMap['autofocus'],
      disabledElevation: jsonMap['disabledElevation'],
      elevation: jsonMap['elevation'],
      focusElevation: jsonMap['focusElevation'],
      highlightElevation: jsonMap['highlightElevation'],
      hoverElevation: jsonMap['hoverElevation'],
      colorBrightness: Brightness.light.fromMap(jsonMap['colorBrightness']),
      animationDuration: jsonMap['animationDuration'],
      color: Color(0).fromMap(jsonMap['color']),
      disabledColor: Color(0).fromMap(jsonMap['disabledColor']),
      disabledTextColor: Color(0).fromMap(jsonMap['disabledTextColor']),
      focusColor: Color(0).fromMap(jsonMap['focusColor']),
      highlightColor: Color(0).fromMap(jsonMap['highlightColor']),
      hoverColor: Color(0).fromMap(jsonMap['hoverColor']),
      splashColor: Color(0).fromMap(jsonMap['splashColor']),
      textColor: Color(0).fromMap(jsonMap['textColor']),
      padding: EdgeInsets.all(0).fromMap(jsonMap['padding']),
      textTheme: ButtonTextTheme.normal.fromMap(jsonMap['textTheme']),
      clipBehavior: Clip.none.fromMap(jsonMap['clipBehavior']),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap
          .fromMap(jsonMap['materialTapTargetSize']),
      child: Utils.fromMap(jsonMap['child']),
      onPressed: () {
        print('On Pressed for Button');
      },
    );
  }
}
