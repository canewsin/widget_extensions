import 'imports.dart';
import 'common.dart';

extension ContainerExt on Container {
  Map toMap() {
    return {
      'Container': {
        'alignment': this.alignment.toMap(),
        'constraints': this.constraints.toMap(),
        'padding': this.padding.toMap(),
        'margin': this.margin.toMap(),
        'decoration': this.decoration.toMap(),
        'child': Utils.toMap(this.child),
      }
    };
  }

  Container fromMap(Map jsonMap) {
    return Container(
      alignment: Alignment.center.fromMap(jsonMap['alignment']),
      padding: EdgeInsets.all(0).fromMap(jsonMap['padding']),
      constraints: BoxConstraints().fromMap(jsonMap['constraints']),
      margin: EdgeInsets.all(0).fromMap(jsonMap['margin']),
      decoration: BoxDecoration().fromMap(jsonMap['decoration']),
      foregroundDecoration:
          BoxDecoration().fromMap(jsonMap['foregroundDecoration']),
      transform: jsonMap['transform'],
      child: Utils.fromMap(jsonMap['child']),
    );
  }
}
