# widget_extensions

An Extension library for Flutter Widgets.

## Getting Started

This Lib helps by providing utility functions for Flutter Widgets. These Methods are written using extension methods provided by `dart sdk 2.6.0`. See the below Supported Widget Section for the implemented Widgets. This is mainly useful for dynamic widgets which will be implemented in code push project for flutter, as well as useful for updatable widgets for your custom implementations.

## Install

```
widget_extensions: ^0.0.4
```

## Example

```
Text('').fromMap({
    'data' : 'This is Extension Widget Library'
});
```

if more than one same widget is used we can instantiate single Widget at once and modify in next itirations.

```
Text text = Text('');

text.fromMap({
    'data' : 'This is Extension Widget Library'
});

text.fromMap({
    'data' : 'You can Contribute to this Library by extending Other Widgets',
    'style': Theme.of(context).textTheme.display1.toMap(),
});
```

you can see normal example by git clone and run this repo.


## Contributing to Library
 All Contributions are welcome and thankful
 You can contribute to this library if you can or like those extensions.

 There should be four methods in a widget to be Extended

 `toMap()`
 
 `fromMap(jsonMap)`

 `toJson()`
 
 `fromJson(json)`

 see container extension file for reference.

 ## Issues 
 feel free to open an issue for bugs or improvements.

 # Supported Widgets

 * [Container]()
 * [RaisedButton]()
 * [Text]()
 * [TextSpan]()
 * [TextStyle]()
 * [Centre]()
 * [Opacity]()
 * [Align]()
 * [Padding]()
 * [Wrap]()
 * [Stack]()
 * [Row]()
 * [Column]()
 * [Placeholder]()
 * [Expanded]()
 * [AspectRatio]()
 * [SizedBox]()
 * [ClipRRect]()
