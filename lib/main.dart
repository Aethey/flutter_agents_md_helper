import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'app/app.dart';
import 'app/bootstrap/app_ready_signal.dart';

void main() {
  final binding = WidgetsFlutterBinding.ensureInitialized();
  runApp(const ProviderScope(child: FlutterArchitectApp()));
  unawaited(_notifyHostAfterFirstFrame(binding));
}

Future<void> _notifyHostAfterFirstFrame(WidgetsBinding binding) async {
  await binding.waitUntilFirstFrameRasterized;
  notifyHostAppReady();
}
