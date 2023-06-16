import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'backend/api_requests/api_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _JWTToken =
      'eyJhbGciOiJSUzI1NiIsInR5cCI6IkpXVCJ9.eyJhdWQiOiJodHRwczovL2lkZW50aXR5dG9vbGtpdC5\nnb29nbGVhcGlzLmNvbS9nb29nbGUuaWRlbnRpdHkuaWRlbnRpdHl0b29sa2l0LnYxLklkZW50aXR5VG9\nvbGtpdCIsImlhdCI6MTY4NjcxNTY5MCwiZXhwIjoxNjg2NzE5MjkwLCJpc3MiOiJmaXJlYmFzZS1hZG1\npbnNkay1vMmg2Y0B0YW5heWEtZGU1NTkuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJzdWIiOiJmaXJ\nlYmFzZS1hZG1pbnNkay1vMmg2Y0B0YW5heWEtZGU1NTkuaWFtLmdzZXJ2aWNlYWNjb3VudC5jb20iLCJ\n1aWQiOiJ1c2VyaWQxIn0.VPKmUrCBEjD6RT3yytGK8Fs5ltmfc3ppwx1hYG_AWY84jGuSMWNhs9xS_ml\nI1gTaANhPWS3HsxR0onrB0c5w_AtTLI8OunKxDtkjdboAdoeaezqmLn_QVm9n12UXZxO_tntcef8T7r0\ndjBZ3W4mby5um7Jz5SWQZyfgG3LL0mQzZj7NE8_3mR7bPT6Ty2DOp36SwQUxQWaCSr19sY5-sbJTHKE9\nnPx81WcwZvwzhJRiir-aOU_kqLIm4HdX_cyF_CQPyjRbqx_gar9CnvOo4d6jaQqRMfISbPUgVffPKHes\nKuLoyiPh69OpUEhHrz9k7UWrDms7Y7juEaEMm-zINgg\n';
  String get JWTToken => _JWTToken;
  set JWTToken(String _value) {
    _JWTToken = _value;
  }

  List<String> _urlImage = [];
  List<String> get urlImage => _urlImage;
  set urlImage(List<String> _value) {
    _urlImage = _value;
  }

  void addToUrlImage(String _value) {
    _urlImage.add(_value);
  }

  void removeFromUrlImage(String _value) {
    _urlImage.remove(_value);
  }

  void removeAtIndexFromUrlImage(int _index) {
    _urlImage.removeAt(_index);
  }

  void updateUrlImageAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _urlImage[_index] = updateFn(_urlImage[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
