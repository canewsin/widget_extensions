import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:widget_extensions/extensions/common.dart';
import 'package:widget_extensions/extensions/utils.dart';
import 'package:widget_extensions/widget_extensions.dart';

void main() {
  test('checkColorExt', () {
    expect(Colors.black.toJson(), '{"value":${Colors.black.value}}');
  });

  List jsonMap = [
    {
      'blurRadius': 5.0,
      'color': {'value': Colors.white.value},
      'offset': {'dx': 0.0, 'dy': 0.0}
    },
    {
      'blurRadius': 5.0,
      'color': {'value': Colors.black.value},
      'offset': {'dx': 0.0, 'dy': 0.0}
    }
  ];

  bool shadowListExtFunc() {
    List<Shadow> shadows = [
      Shadow(color: Colors.white, blurRadius: 5.0, offset: Offset(0, 0)),
      Shadow(color: Colors.black, blurRadius: 5.0, offset: Offset(0, 0)),
    ];
    var result = shadows.toMap();
    List<Shadow> shadowsC = [].fromMap(jsonMap);
    return jsonMap.toString() == result.toString() &&
        shadowsC.toString() == shadows.toString();
  }

  test('shadowListExtTest', () {
    expect(shadowListExtFunc(), true);
  });

  bool textDecorationExtensionFunc() {
    List decors = [
      'lineThrough',
      'overline',
      'underline',
    ];
    List decorsA = [
      'lineThrough',
    ];
    TextDecoration none = TextDecoration.none;
    TextDecoration dec = TextDecoration.combine([
      TextDecoration.lineThrough,
      TextDecoration.overline,
      TextDecoration.underline,
    ]);
    TextDecoration decA = TextDecoration.lineThrough;

    return none.fromMap(decors) == dec && none.fromMap(decorsA) == decA;
  }

  test('TextDecorationExtTest', () {
    expect(textDecorationExtensionFunc(), true);
  });
}
