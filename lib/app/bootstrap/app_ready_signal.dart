import 'app_ready_signal_stub.dart'
    if (dart.library.js_interop) 'app_ready_signal_web.dart'
    as implementation;

void notifyHostAppReady() => implementation.notifyHostAppReady();
