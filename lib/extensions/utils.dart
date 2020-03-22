import 'package:flutter/material.dart';

import 'container.dart';
import 'common.dart';
import 'text.dart';
import 'others.dart';

double toDoubleorInfinite(dynamic str) {
  if (str is double) return str;
  return (str == 'Infinite') ? double.infinity : double.parse(str);
}

extension NumExt on num {
  toDouble() {
    return (this is int) ? this.toDouble() : this;
  }
}

extension DoubleExt on double {
  checkInfinity() {
    return (this.isInfinite) ? 'Infinite' : this;
  }
}

extension ListExt on List {
  toMap() {
    if (this is List) {
      List<Map> mapsList = [];
      this.forEach((f) {
        if (f is Shadow) mapsList.add(f.toMap());
        // if (f is InlineSpan) mapsList.add(f.toMap());
        if (f is Widget) mapsList.add(Utils.toMap(f));
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

  wgtFromMap(dynamic jsonMap) {
    if (jsonMap == null) return null;
    List<Widget> widgets = [];
    if (jsonMap is List) {
      jsonMap.forEach((f) {
        widgets.add(Utils.fromMap(f));
      });
    }
    return widgets;
  }
}

class Utils {
  static Map toMap(Widget wgt) {
    if (wgt is Container) {
      return wgt.toMap();
    } else if (wgt is Text) {
      return wgt.toMap();
    } else if (wgt is Center) {
      return wgt.toMap();
    } else if (wgt is Opacity) {
      return wgt.toMap();
    } else if (wgt is Align) {
      return wgt.toMap();
    } else if (wgt is Padding) {
      return wgt.toMap();
    } else if (wgt is Stack) {
      return wgt.toMap();
    } else if (wgt is Row) {
      return wgt.toMap();
    } else if (wgt is Column) {
      return wgt.toMap();
    } else if (wgt is Wrap) {
      return wgt.toMap();
    }
    return null;
  }

  static Widget fromMap(jsonMap) {
    switch (jsonMap) {
      case 'Container':
        return Container().fromMap(jsonMap['Container'] as Map);
        break;
      case 'Text':
        return Text('').fromMap(jsonMap['Text']);
        break;
      case 'Center':
        return Center().fromMap(jsonMap['Center']);
        break;
      case 'Opacity':
        return Opacity(
          opacity: 1.0,
        ).fromMap(jsonMap['Opacity']);
        break;
      case 'Align':
        return Align().fromMap(jsonMap['Align']);
        break;
      case 'Padding':
        return Padding(
          padding: EdgeInsets.all(0.0),
        ).fromMap(jsonMap['Padding']);
        break;
      case 'Stack':
        return Stack().fromMap(jsonMap['Stack']);
        break;
      case 'Row':
        return Row().fromMap(jsonMap['Row']);
        break;
      case 'Column':
        return Column().fromMap(jsonMap['Column']);
        break;
      case 'Wrap':
        return Wrap().fromMap(jsonMap['Wrap']);
        break;
      default:
    }
    return Container();
  }
}

class RRectCustomClipper extends CustomClipper<RRect> {
  dynamic jsonMap;
  RRectCustomClipper(this.jsonMap);

  @override
  RRect getClip(Size size) {
    final rrect = RRect.zero.fromMap(jsonMap);
    return rrect;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return false;
  }
}
