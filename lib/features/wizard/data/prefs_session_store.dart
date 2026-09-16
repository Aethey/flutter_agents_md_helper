import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import 'knowledge_repository.dart';

class SharedPreferencesSessionStore implements SessionStore {
  SharedPreferencesSessionStore({this.key = 'flutter-architect-v1'});

  final String key;

  @override
  Future<PersistedSession?> load() async {
    final prefs = await SharedPreferences.getInstance();
    final raw = prefs.getString(key);
    if (raw == null) {
      return null;
    }
    return PersistedSession.fromJson(jsonDecode(raw) as Map<String, dynamic>);
  }

  @override
  Future<void> save(PersistedSession session) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(key, jsonEncode(session.toJson()));
  }
}
