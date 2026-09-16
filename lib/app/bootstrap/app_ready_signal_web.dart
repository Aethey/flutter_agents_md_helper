import 'dart:js_interop';

@JS('__flutterArchitectReady')
external void _notifyFlutterArchitectReady();

void notifyHostAppReady() => _notifyFlutterArchitectReady();
